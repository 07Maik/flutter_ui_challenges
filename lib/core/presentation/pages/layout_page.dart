import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/models/route_model.dart'
    show DesignDeviceType;

class LayoutPage extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final DesignDeviceType deviceType;

  const LayoutPage(
      {Key? key,
      required this.child,
      required this.title,
      required this.description,
      required this.deviceType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            layoutChild(),
            Positioned(left: -9, top: -9, child: backButton(context)),
          ],
        ),
      ),
    );
  }

  Center layoutChild() {
    late double width;
    late double height;

    switch (deviceType) {
      case DesignDeviceType.mobile:
        width = 450;
        height = 800;

        break;

      case DesignDeviceType.tablet:
        width = 750;
        height = 1100;

        break;
      default:
    }

    return Center(
        child: SizedBox(
      width: width,
      height: height,
      child: child,
    ));
  }

  Widget backButton(BuildContext context) {
    return IconButton(
        tooltip: 'Back',
        onPressed: () => Navigator.pop(context),
        icon: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
              color: Colors.black,
            ),
            child:
                const Icon(Icons.arrow_back, size: 14, color: Colors.white)));
  }
}