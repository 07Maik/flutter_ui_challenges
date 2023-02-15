import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xffff3a5a),
            shape: const StadiumBorder()),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 18),
          ),
        ));
  }
}
