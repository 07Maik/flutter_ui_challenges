import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/basic_login2/screens/login/widgets/login_button_widget.dart';

import 'widgets/custom_clippers_widget.dart';
import 'widgets/login_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          background(),
          form(),
          const Spacer(),
          singUp(),
        ],
      ),
    );
  }

  Widget background() {
    const textStyle = TextStyle(
        fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white);

    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperThin(),
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
          ),
        ),
        ClipPath(
          clipper: WaveClipperBroad(),
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
          ),
        ),
        ClipPath(
          clipper: WaveClipperMain(),
          child: Container(
            padding: const EdgeInsets.only(top: 40),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
            child: Column(
              children: const [
                Icon(Icons.fastfood, size: 60, color: Colors.white),
                SizedBox(height: 20),
                Text('Taste Me', style: textStyle)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget form() {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Form(
          child: Column(
        children: const [
          LoginInput(hintText: 'Email', icon: Icons.email),
          SizedBox(height: 30.0),
          LoginInput(hintText: 'Password', icon: Icons.lock),
          SizedBox(height: 30.0),
          LoginButton(),
          SizedBox(
            height: 20,
          ),
          Text('FORGET PASSWORD ?',
              style: TextStyle(
                  color: Color(0xfffe494d),
                  fontSize: 13,
                  fontWeight: FontWeight.w600)),
        ],
      )),
    );
  }

  Container singUp() {
    return Container(
        alignment: Alignment.center,
        height: 90,
        child: const Text.rich(TextSpan(
          children: [
            TextSpan(
                text: 'Don\'t have an Account ?',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
            TextSpan(
              text: ' Sign Up',
              style: TextStyle(
                  color: Color(0xfffe494d),
                  fontSize: 15,
                  decoration: TextDecoration.underline),
            )
          ],
        )));
  }
}
