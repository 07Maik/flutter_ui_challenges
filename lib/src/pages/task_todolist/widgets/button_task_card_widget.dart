import 'package:flutter/material.dart';

class ButtonTaskCard extends StatelessWidget {
  final IconData icon;
  final Color color;

  const ButtonTaskCard({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 0,
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Icon(icon, color: color),
    );
  }
}
