import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/models/route_model.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';

import '../screens/login_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.primaryColor,
    required this.text,
  }) : super(key: key);

  final Color primaryColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            foregroundColor: Colors.white,
            backgroundColor: primaryColor,
            elevation: 25,
            shadowColor: Colors.black54),
        onPressed: (() {
          CustomRouteTransitions(
                  duration: const Duration(milliseconds: 500),
                  child: const LoginScreen(),
                  context: context)
              .navigateTransitionOnLayout(DesignDeviceType.mobile);
        }),
        child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 40,
            child: Text(text,
                style: const TextStyle(fontWeight: FontWeight.w400))));
  }
}
