import 'package:flutter/material.dart';

import '../data.dart';
import 'card_item_widget.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});
  static const double space = 60;

  static const List<Color> colors = [Colors.red, Colors.blue];
  static const List<String> numbers = ["1", "2", "3", "4", "5", "6"];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Wrap(
          runSpacing: -30,
          spacing: 16,
          children: List.generate(
            clothes.length,
            (index) => Container(
              margin: EdgeInsets.only(top: index % 2 == 1 ? 40 : 0),
              height: 240,
              width: width < 400 ? 160 : 190,
              child: CardItem(item: clothes[index]),
            ),
          ).toList()),
    );
  }
}
