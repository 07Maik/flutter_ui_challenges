import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/clothes_shopping/model/item_shopping_model.dart';

import 'card_item_widget.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final items = ItemShoppingModel.getItems();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Wrap(
          runSpacing: -30,
          spacing: 16,
          children: List.generate(
            items.length,
            (index) => Container(
              margin: EdgeInsets.only(top: index % 2 == 1 ? 40 : 0),
              height: 250,
              width: width < 400
                  ? 160
                  : width < 420
                      ? 170
                      : 190,
              child: CardItem(item: items[index]),
            ),
          ).toList()),
    );
  }
}
