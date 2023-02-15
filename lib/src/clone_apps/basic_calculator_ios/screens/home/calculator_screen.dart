import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/calculator_controller.dart';

import 'widgets/custom_digit_button_widget.dart';
import 'widgets/math_result_widget.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});

  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MathResult(),
                ),
                digits(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget digits() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _specialAction('C', () => controller.clear()),
            _specialAction('+/-', () => controller.changePositiveNegative()),
            _specialAction('%', () => controller.selectPercentage()),
            _operator('/', () => controller.selectOperation('/'))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _digit('7'),
            _digit('8'),
            _digit('9'),
            _operator('x', () => controller.selectOperation('x'))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _digit('4'),
            _digit('5'),
            _digit('6'),
            _operator('-', () => controller.selectOperation('-'))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _digit('1'),
            _digit('2'),
            _digit('3'),
            _operator('+', () => controller.selectOperation('+'))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _digit('0', true),
            _digit('.', false, () => controller.addDecimalPoint()),
            _operator('=', () => controller.getResult()),
          ],
        ),
      ],
    );
  }

  Obx _operator(String text, VoidCallback action) {
    return Obx((() => CustomDigitButton(
          text: text,
          backgroundColor: (controller.operatorSelected.value == text)
              ? Colors.white
              : const Color(0xfff39b26),
          foregroundColor: (controller.operatorSelected.value == text)
              ? const Color(0xfff39b26)
              : Colors.white,
          onPressed: action,
        )));
  }

  CustomDigitButton _digit(String text,
      [bool isBig = false, VoidCallback? action]) {
    return CustomDigitButton(
      text: text,
      isBig: isBig,
      onPressed: () => action != null ? action() : controller.addNumber(text),
      backgroundColor: const Color(0xff333333),
      foregroundColor: Colors.white,
    );
  }

  CustomDigitButton _specialAction(String text, VoidCallback action) {
    return CustomDigitButton(
      text: text,
      backgroundColor: const Color(0xffB3B4B5),
      foregroundColor: Colors.black,
      onPressed: action,
    );
  }
}
