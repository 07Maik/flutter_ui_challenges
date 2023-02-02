import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomMenuBar extends StatelessWidget {
  const BottomMenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[100]!,
            blurRadius: 2,
            offset: const Offset(0, -1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          menuOption(Icons.home_rounded, true),
          menuOption(Icons.shopping_cart),
          menuOption(Icons.notifications),
          menuOption(Icons.person),
        ],
      ),
    );
  }

  Widget menuOption(IconData icon, [bool isSelected = false]) {
    const double sizeIcon = 20;
    return isSelected
        ? Container(
            width: 100,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Constants.secondaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Constants.primaryColor,
                  foregroundColor: Constants.secondaryColor,
                  child: Icon(icon, size: sizeIcon),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Home',
                  style: TextStyle(color: Constants.primaryColor),
                )
              ],
            ),
          )
        : IconButton(
            onPressed: (() {}),
            icon: Icon(icon, color: Constants.secondaryColor, size: sizeIcon),
          );
  }
}
