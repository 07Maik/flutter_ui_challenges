import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;

import 'widgets/custom_input_widget.dart';
import 'widgets/login_button_widgets.dart';
import 'widgets/social_media_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(),
              form(),
              loginButtonsSocialMedia(),
            ],
          ),
        ),
      ),
    );
  }

  Widget title() => Container(
        margin: const EdgeInsets.only(top: 50.0, left: 25.0),
        width: 140,
        height: 50,
        child: Stack(
          children: [
            Positioned(
              bottom: 8,
              child: Container(
                width: 90.0,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            const Positioned(
              left: 15,
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      );

  Widget form() {
    final inputs = Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(children: const [
        CustomInput(
          label: 'Email',
          hint: 'personal email',
          textInputType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20.0),
        CustomInput(
            label: 'Password',
            hint: '******',
            textInputType: TextInputType.visiblePassword,
            isPassword: true),
      ]),
    );

    final forgotPassword = Container(
      margin: const EdgeInsets.only(top: 5, right: 20.0),
      width: double.infinity,
      alignment: Alignment.topRight,
      child: const Text(
        'Forgot you password?',
        style: TextStyle(fontSize: 16.0),
      ),
    );

    const buttonSignIn = Align(
      alignment: Alignment.bottomRight,
      child: LoginButton(),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 60.0),
      child: Form(
        child: Column(
          children: [
            inputs,
            forgotPassword,
            const SizedBox(height: 100.0),
            buttonSignIn,
          ],
        ),
      ),
    );
  }

  Widget loginButtonsSocialMedia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SocialMediaButton(
          color: Colors.red,
          iconData: FontAwesomeIcons.googlePlusG,
          text: 'Google',
        ),
        SizedBox(width: 20.0),
        SocialMediaButton(
          color: Colors.indigo,
          iconData: FontAwesomeIcons.facebookF,
          text: 'Google',
        )
      ],
    );
  }
}
