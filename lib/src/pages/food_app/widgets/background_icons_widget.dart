import 'dart:math';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackgroundIcons extends StatelessWidget {
  final double width;
  final double height;
  final int numberIconsPerColumn;
  final int minIconsPerColumn;
  final Color iconColor;
  final int minSizeIcon;
  final int maxSizeIcon;

  const BackgroundIcons(
      {super.key,
      required this.width,
      required this.height,
      required this.numberIconsPerColumn,
      required this.minIconsPerColumn,
      required this.iconColor,
      this.minSizeIcon = 25,
      this.maxSizeIcon = 50});

  static const List<IconData> _icons = [
    Icons.fastfood_sharp,
    Icons.coffee_rounded,
    Icons.local_drink_rounded,
    FontAwesomeIcons.bacon,
    FontAwesomeIcons.egg,
    FontAwesomeIcons.burger,
    FontAwesomeIcons.bowlFood,
    FontAwesomeIcons.candyCane,
    FontAwesomeIcons.hotdog,
    FontAwesomeIcons.pizzaSlice,
    FontAwesomeIcons.iceCream,
    FontAwesomeIcons.cookie
  ];

  @override
  Widget build(BuildContext context) => Stack(children: icons());

  List<Positioned> icons() {
    double? top;
    double? left;
    double widthPosition = 10.0;
    double heightPosition = 0.0;

    List<Positioned> iconsPositioned = <Positioned>[];

    final Random random = Random();

    final int numberRows = (width / 100).ceil();

    for (var i = 0; i < numberRows; i++) {
      final int numberIcons =
          minIconsPerColumn + random.nextInt(numberIconsPerColumn);

      heightPosition = 0;

      for (var n = 1; n <= numberIcons; n++) {
        final lessWidth = random.nextDouble() * 30;
        final lessHeight = random.nextDouble() * 40;

        top = heightPosition - lessHeight;
        left = widthPosition - lessWidth;

        iconsPositioned.add(Positioned(
          left: left,
          top: top,
          child: Transform.rotate(
            angle: random.nextDouble() + 6,
            child: Icon(
              _icons[random.nextInt(_icons.length)],
              color: iconColor,
              size: (40 + random.nextInt(minSizeIcon)).toDouble(),
            ),
          ),
        ));

        left = null;
        top = null;

        heightPosition += (height / (numberIcons));
      }

      widthPosition += 100;
    }

    return iconsPositioned;
  }
}
