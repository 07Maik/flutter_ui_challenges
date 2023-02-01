import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDigitButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool isBig;
  final Function onPressed;

  const CustomDigitButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
    this.isBig = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sizeSide = 68;

    final double widthSize = isBig ? sizeSide * 2 + 16 : sizeSide;

    return Container(
      margin: const EdgeInsets.only(left: 16, bottom: 16),
      width: widthSize,
      height: sizeSide,
      child: TextButton(
        onPressed: () => onPressed(),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
        ),
        child: Container(
          alignment: Alignment(isBig ? -0.7 : 0, 0),
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 32,
              color: foregroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
