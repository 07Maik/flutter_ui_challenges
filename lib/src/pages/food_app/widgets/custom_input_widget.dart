import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isObsText;

  const CustomInput({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.isObsText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObsText,
      decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.1),
          filled: true,
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.black54),
          contentPadding: const EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
          border: OutlineInputBorder(
              gapPadding: 10, borderRadius: BorderRadius.circular(20))),
    );
  }
}
