import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.primaryColor,
    required this.text,
  }) : super(key: key);

  final Color primaryColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            foregroundColor: Colors.white,
            backgroundColor: primaryColor,
            elevation: 25,
            shadowColor: Colors.black54),
        onPressed: (() {}),
        child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 40,
            child: Text(text,
                style: const TextStyle(fontWeight: FontWeight.w400))));
  }
}
