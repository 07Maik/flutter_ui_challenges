import 'package:flutter/material.dart';

class MessageButtonInput extends StatelessWidget {
  final IconData icon;
  const MessageButtonInput({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 1,
      shape: const CircleBorder(),
      onPressed: () => {},
      child: Icon(icon, color: Colors.white70, size: 22),
    );
  }
}
