import 'package:flutter/material.dart';

import '../../../constants.dart';

class FloatButtom extends StatelessWidget {
  const FloatButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: (() {}),
      backgroundColor: Constants.highLightColor,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                  color: Constants.highLightColor,
                  blurRadius: 5,
                  offset: Offset(0, 2)),
            ]),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
