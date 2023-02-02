import 'package:flutter/material.dart';

class MenuCustomClipper extends CustomClipper<Path> {
  ///[0] Top, [1] Bottom
  final List<double> widths;

  const MenuCustomClipper({required this.widths});

  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..lineTo(widths[1], size.height)
      ..lineTo(widths[0], 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
