import 'package:flutter/material.dart';

import '../../../constants.dart';

class MessageButtonInput extends StatelessWidget {
  final IconData icon;
  const MessageButtonInput({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => {},
      minWidth: 1,
      shape: const CircleBorder(),
      child: Icon(icon, color: Constants.secondaryTextColor, size: 22),
    );
  }
}
