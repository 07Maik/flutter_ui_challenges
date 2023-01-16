import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (() {}),
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: Constants.secondColor,
        foregroundColor: Constants.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Row(
          children: const [
            Icon(Icons.shopping_bag_outlined, size: 20),
            SizedBox(width: 16),
            Text('Add to cart', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
