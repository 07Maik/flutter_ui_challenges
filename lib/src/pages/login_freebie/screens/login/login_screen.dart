import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';

import 'package:flutter_ui_challenges/src/pages/login_freebie/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_ui_challenges/src/pages/login_freebie/widgets/custom_input_widget.dart';

import '../../constants.dart';
import '../../widgets/custom_button_widget.dart';
import 'widgets/custom_radio_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(children: [
        btnArrowBack(),
        lblMessage(),
        form(context),
      ]),
    );
  }

  Container btnArrowBack() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(25),
      alignment: Alignment.topLeft,
      child: const Icon(
        FontAwesomeIcons.arrowLeftLong,
        size: 16,
        color: Colors.grey,
      ),
    );
  }

  Container lblMessage() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 25),
      child: const Text(
        'Glad to see you!',
        style: TextStyle(
          color: Color(0xff3E4A59),
          letterSpacing: 1,
          fontSize: 36,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget form(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          const CustomInput(text: 'Username'),
          const CustomInput(text: 'Password', obscureText: true),
          const SizedBox(height: 20),
          _frmPassword(),
          const SizedBox(height: 30),
          const CustomButton(
              backGroundColor: Constants.secondaryColor, text: 'LOGIN'),
          _frmNewUser(context)
        ],
      ),
    );
  }

  Row _frmPassword() {
    return Row(
      children: const [
        CustomRadio(primaryColor: Constants.secondaryColor),
        Text(' Remember me',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            )),
        Spacer(),
        Text('Forgot password?',
            style: TextStyle(color: Constants.secondaryColor)),
      ],
    );
  }

  Row _frmNewUser(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'New user?',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              visualDensity: const VisualDensity(horizontal: -4),
            ),
            onPressed: (() => CustomRouteTransitions(
                    duration: const Duration(milliseconds: 500),
                    child: const SignUpScreen(),
                    context: context)
                .navigateTransitionOnLayout(DesignDeviceType.mobile)),
            child: const Text(
              'SignUp',
              style: TextStyle(
                color: Constants.secondaryColor,
                fontSize: 12,
              ),
            ))
      ],
    );
  }
}
