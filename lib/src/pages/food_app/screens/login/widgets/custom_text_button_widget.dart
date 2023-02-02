import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';

import '../../../constants.dart';

class CustomTextButton extends StatelessWidget {
  final Widget screen;

  const CustomTextButton({
    Key? key,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => CustomRouteTransitions(
        context: context,
        child: screen,
        duration: const Duration(milliseconds: 500),
      ).navigateTransitionOnLayout(DesignDeviceType.mobile),
      style: TextButton.styleFrom(
        backgroundColor: Constants.secondaryColor,
        foregroundColor: Constants.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          child: const Text(
            'Login',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
