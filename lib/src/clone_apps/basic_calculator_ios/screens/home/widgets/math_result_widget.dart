import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/calculator_controller.dart';

class MathResult extends StatelessWidget {
  const MathResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CalculatorController>();

    return Container(
        alignment: Alignment.bottomRight,
        child: Obx(
          () => Text(controller.displayValue.value,
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.w300)
              //TextStyle(),
              ),
        ));
  }
}
