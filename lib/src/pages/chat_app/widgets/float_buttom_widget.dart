import 'package:flutter/material.dart';

class FloatButtom extends StatelessWidget {
  const FloatButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: (() {}),
      backgroundColor: const Color(0xffff7700),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.orange.withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, 2)),
            ]),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
