import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;

class ChallengeFilter extends StatelessWidget {
  const ChallengeFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.filter_list, color: Colors.blue),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Screens',
                style: TextStyle(color: Colors.blue),
              )),
          TextButton(
              onPressed: () {},
              child: const Text('Apps clone',
                  style: TextStyle(color: Colors.blue))),
        ],
      ),
    );
  }
}
