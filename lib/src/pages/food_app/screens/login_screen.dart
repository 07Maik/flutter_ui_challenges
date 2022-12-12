import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_ui_challenges/src/pages/food_app/widgets/background_icons_widget.dart';

import '../widgets/custom_input_widget.dart';
import '../widgets/custom_text_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        background(),
        form(),
      ]),
    );
  }

  BackgroundIcons background() {
    return BackgroundIcons(
      height: 1000,
      width: 500,
      minIconsPerColumn: 3,
      numberIconsPerColumn: 4,
      iconColor: Colors.grey.withOpacity(0.12),
    );
  }

  Widget form() {
    final nameApp = Text(
      'Food',
      style: GoogleFonts.gluten(
        fontSize: 80,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );

    const emailInput = CustomInput(labelText: 'Email', hintText: 'Email');

    const passworInput = CustomInput(
        labelText: 'Passowrd', hintText: 'Passowrd', isObsText: true);

    const spaceBetween = SizedBox(height: 40.0);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity, height: 100),
          nameApp,
          spaceBetween,
          emailInput,
          spaceBetween,
          passworInput,
          spaceBetween,
          const CustomTextButton(),
          spaceBetween,
          const Text('Forgot password', style: TextStyle(color: Colors.black54))
        ],
      ),
    );
  }
}
