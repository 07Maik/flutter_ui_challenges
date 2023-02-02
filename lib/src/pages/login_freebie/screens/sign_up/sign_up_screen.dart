import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../providers/slide_show.dart';
import '../../widgets/custom_button_widget.dart';
import 'widgets/slider_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SlideShow(),
      child: Scaffold(
        backgroundColor: Constants.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView(
                children: [
                  lblAccount(),
                  lblSlogan(),
                  slider(),
                ],
              ),
            ),
            buttons(),
          ],
        ),
      ),
    );
  }

  Container lblSlogan() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 25),
      child: const Text('Mansions you only dreamed of',
          style: TextStyle(
              letterSpacing: 1,
              fontSize: 32,
              color: Constants.secondaryColor,
              fontWeight: FontWeight.w500)),
    );
  }

  Container lblAccount() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 25, bottom: 15, top: 40),
      child: const Text('Create an account', style: TextStyle(fontSize: 18)),
    );
  }

  Container slider() {
    List<Widget> widgets = [
      SvgPicture.asset('assets/login_freebie/background.svg',
          fit: BoxFit.cover),
      SvgPicture.asset('assets/login_freebie/background.svg',
          fit: BoxFit.cover),
      SvgPicture.asset('assets/login_freebie/background.svg',
          fit: BoxFit.cover),
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: SliderSignUp(slides: widgets),
    );
  }

  Widget buttons() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const CustomButton(
              backGroundColor: Constants.secondaryColor,
              text: 'SIGNUP',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Terms of service',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
