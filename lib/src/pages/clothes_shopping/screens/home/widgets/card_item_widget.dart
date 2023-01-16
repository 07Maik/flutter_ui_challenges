import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';

import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';

import '../../../constants.dart';
import '../../item_detail/detail_screen.dart';
import '../../../model/item_shopping_model.dart';

class CardItem extends StatelessWidget {
  final ItemShoppingModel item;
  const CardItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomRouteTransitions(
                context: context,
                child: DetailScreen(item: item),
                duration: const Duration(milliseconds: 500))
            .navigateTransitionOnLayout(DesignDeviceType.mobile);
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(item.colorBackground),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(item.pathImage),
                  ),
                ),
              ),
              const Positioned(
                right: 16,
                top: 16,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Constants.secondColor,
                  foregroundColor: Constants.primaryColor,
                  child: Icon(Icons.thumb_up_alt_outlined, size: 10),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            item.brand,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            item.generalDescription,
            style: const TextStyle(fontSize: 12, color: Colors.black54),
          ),
          Text(
            item.price,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
