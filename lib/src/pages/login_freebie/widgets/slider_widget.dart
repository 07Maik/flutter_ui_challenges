import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/slide_show.dart';
import 'dot_widget.dart';

class SliderSignUp extends StatefulWidget {
  final List<Widget> slides;
  const SliderSignUp({super.key, required this.slides});

  @override
  State<SliderSignUp> createState() => _SliderSignUpState();
}

class _SliderSignUpState extends State<SliderSignUp> {
  final PageController controller = PageController();

  @override
  void initState() {
    final provider = Provider.of<SlideShow>(context, listen: false);

    controller
        .addListener(() => provider.currentPage = controller.page!.round());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: width < 440 ? (width + 25) : 465, //Maximun size
          width: width < 440 ? (width + 25) : 465, //Maximun size
          child: PageView(controller: controller, children: widget.slides),
        ),
        Positioned(
          bottom: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                widget.slides.length, (index) => Dot(index: index)),
          ),
        )
      ],
    );
  }
}
