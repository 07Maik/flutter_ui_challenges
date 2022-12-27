import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';

import '../screens/splash_screen.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => CustomRouteTransitions(
              context: context,
              child: const SplashScreen(),
              duration: const Duration(milliseconds: 500))
          .navigateTransitionOnLayout(DesignDeviceType.mobile),
      style: TextButton.styleFrom(
          backgroundColor: const Color(0xffd10b00),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }
}
