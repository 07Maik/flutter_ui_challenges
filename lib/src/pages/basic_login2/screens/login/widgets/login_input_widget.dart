import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const LoginInput({
    Key? key,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1.5,
                  offset: Offset(0, 2))
            ]),
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: const Color(0xfffe494d),
              ),
              hintText: hintText,
              border: InputBorder.none),
        ));
  }
}
