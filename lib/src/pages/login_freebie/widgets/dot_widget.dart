import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/slide_show.dart';

class Dot extends StatelessWidget {
  final int index;

  const Dot({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SlideShow>(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: provider.currentPage == index ? Colors.grey[400] : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}
