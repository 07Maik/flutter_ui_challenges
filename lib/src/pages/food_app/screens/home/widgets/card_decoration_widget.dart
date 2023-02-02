import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../helper/operations.dart';
import '../../../widgets/background_icons_widget.dart';

import 'menu_custom_clipper.dart';

class CardDecoration extends StatelessWidget {
  final int index;
  final int menuLength;

  const CardDecoration(
      {Key? key, required this.index, required this.menuLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MenuCustomClipper(widths: calculateAngle(index, menuLength)),
      child: Container(
        decoration: BoxDecoration(
          color: Constants.secondaryColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: BackgroundIcons(
          height: 80,
          width: 80,
          iconColor: Colors.white.withOpacity(0.2),
          minIconsPerColumn: 1,
          numberIconsPerColumn: 1,
          minSizeIcon: 10,
          maxSizeIcon: 15,
        ),
      ),
    );
  }
}
