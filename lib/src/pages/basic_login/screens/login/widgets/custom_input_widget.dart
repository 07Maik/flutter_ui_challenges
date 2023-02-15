import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final String label;
  final TextInputType textInputType;
  final bool isPassword;

  const CustomInput(
      {Key? key,
      required this.label,
      required this.hint,
      this.isPassword = false,
      this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: textInputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "El campo es obligatorio";
          }
        });
  }
}
