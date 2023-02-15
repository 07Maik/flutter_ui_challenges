import 'package:flutter/material.dart';

class ButtonConfirmOrder extends StatelessWidget {
  const ButtonConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          side: BorderSide.none,
          backgroundColor: Colors.deepPurple,
          elevation: 2,
          shape: const ContinuousRectangleBorder()),
      child: Container(
          alignment: Alignment.center,
          height: 45,
          child: const Text(
            'Confirm Order',
            style: TextStyle(color: Colors.white, fontSize: 14),
          )),
    );
  }
}
