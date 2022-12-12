import 'package:flutter/material.dart';

import '../data.dart';
import '../util.dart';
import 'background_icons_widget.dart';
import 'menu_custom_clipper.dart';

class CardDecoration extends StatelessWidget {
  final int index;

  const CardDecoration({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MenuCustomClipper(widths: calculateAngle(index, menu.length)),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffd10f00),
          borderRadius: BorderRadius.circular(7),
        ),
        child: BackgroundIcons(
            height: 80,
            width: 80,
            iconColor: Colors.white.withOpacity(0.2),
            minIconsPerColumn: 1,
            numberIconsPerColumn: 1,
            minSizeIcon: 10,
            maxSizeIcon: 15,),
      ),
    );
  }
}
