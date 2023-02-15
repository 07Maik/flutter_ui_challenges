import 'package:flutter/material.dart';

class WaveClipperMain extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double height = size.height - 60;

    final Path path = Path()
      ..lineTo(0, height)
      ..cubicTo(
        // first curve
        size.width * 0.4,
        height - 100,
        //second curve
        size.width * 0.60,
        height,
        //finish stroke
        size.width,
        height - 20,
      )
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class WaveClipperThin extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double height = size.height - 60;

    final Path path = Path()
      ..lineTo(0, height)
      ..cubicTo(
        // first curve
        size.width * 0.40,
        height - 100,
        //second curve
        size.width * 0.60,
        height + 20,
        //finish stroke
        size.width,
        height,
      )
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class WaveClipperBroad extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path()
      ..lineTo(0, size.height - 60)
      ..cubicTo(
        // first curve
        size.width * 0.40,
        size.height,
        //second curve
        size.width * 0.70,
        size.height - 80,
        //finish stroke
        size.width,
        size.height - 65,
      )
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
