import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  final Widget child;
  final String title;
  final String description;

  const LayoutPage({
    Key? key,
    required this.child,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  late bool isMobile;
  late bool isPerspectiveButtonVisible;

  @override
  void initState() {
    isMobile = true;
    isPerspectiveButtonVisible =
        !(defaultTargetPlatform == TargetPlatform.android ||
            defaultTargetPlatform == TargetPlatform.iOS);

    if (WidgetsBinding.instance.window.physicalSize.width <= 600) {
      isPerspectiveButtonVisible = false;
    }
    super.initState();
  }

  void changeWidth() => setState(() => {isMobile = !isMobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
                child: SizedBox(
              width: isMobile ? 500 : null,
              child: widget.child,
            )),
            Positioned(left: 8, top: 8, child: backButton(context)),
            if (isPerspectiveButtonVisible)
              Positioned(right: 8, top: 8, child: perspectiveButton())
          ],
        ),
      ),
    );
  }

  FloatingActionButton perspectiveButton() {
    return FloatingActionButton.small(
      heroTag: null,
      tooltip: isMobile ? 'View from computer' : 'View from mobile',
      backgroundColor: Colors.white,
      onPressed: () => changeWidth(),
      child: Icon(
        isMobile ? Icons.laptop_chromebook : Icons.phone_android,
        color: Colors.black,
      ),
    );
  }

  FloatingActionButton backButton(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: null,
      tooltip: 'Back',
      backgroundColor: Colors.white,
      onPressed: () => Navigator.pop(context),
      child: const Icon(Icons.arrow_back, color: Colors.black),
    );
  }
}
