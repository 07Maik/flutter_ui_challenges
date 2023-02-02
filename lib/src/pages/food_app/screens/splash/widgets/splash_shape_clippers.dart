import 'package:flutter/material.dart';

class SplashShapeClipperMain extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    final heigth = size.height - 70;
    //corregir tamaños dinamicos

    path.lineTo(0, heigth);
    path.quadraticBezierTo(35, heigth + 15, 80, heigth);
    path.quadraticBezierTo(200, heigth - 30, 220, heigth + 20);
    //
    path.cubicTo(230, heigth + 60, 240, heigth + 65, 280, heigth + 70);
    path.cubicTo(360, heigth + 65, 370, heigth - 10, 340, heigth - 80);
    path.cubicTo(200, 220, 360, 250, 330, 110);
    path.cubicTo(310, 60, 300, 55, 180, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class SplashShapeClipperThin extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    final heigth = size.height - 70;

    path.lineTo(0, heigth);
    path.quadraticBezierTo(35, heigth + 15, 80, heigth);
    path.quadraticBezierTo(200, heigth - 30, 220, heigth + 20);

    path.cubicTo(240, heigth + 60, 250, heigth + 65, 290, heigth + 70);

    path.cubicTo(370, heigth + 65, 380, heigth - 10, 350, heigth - 80);
    path.cubicTo(215, 220, 375, 250, 345, 110);
    path.cubicTo(325, 60, 315, 55, 195, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
