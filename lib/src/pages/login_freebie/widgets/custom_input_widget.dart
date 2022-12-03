import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String text;
  final bool obscureText;

  static const decorationColor = Color(0xff1bd76f);

  const CustomInput({
    Key? key,
    required this.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          width: 0.15,
          color: Colors.grey,
        )),
        floatingLabelStyle: const TextStyle(
            fontSize: 18,
            color: Color(0xff3E4A59),
            fontWeight: FontWeight.w300),
        labelStyle: TextStyle(
            fontSize: 14, color: Colors.grey[400]),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          color: decorationColor,
        )),
        suffix: const Icon(
          Icons.check_circle,
          size: 18,
          color: decorationColor,
        ),
        labelText: text,
      ),
    );
  }
}
