import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        alignment: Alignment.bottomCenter,
        height: 50,
        color: const Color(0xff6874b7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 28,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}
