import 'package:flutter/material.dart';

import '../models/popular_menu_model.dart';
import '../widgets/extra_item_widget.dart';
import '../widgets/rating_widget.dart';

class FoodDishDetail extends StatelessWidget {
  final PopularMenuModel dishModel;

  const FoodDishDetail({
    Key? key,
    required this.dishModel,
  }) : super(key: key);

  static const Color colorGreen = Color(0xff27c96d);

  @override
  Widget build(BuildContext context) {
    final divider = Divider(
      height: 25,
      color: Colors.grey[400],
      thickness: 1,
    );

    double heigth = MediaQuery.of(context).size.height * 0.6;

    if (heigth > 400) {
      heigth = 300;
    }

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              backgroundImage(heigth),
              Positioned(
                  left: 30, bottom: 10, height: 70, child: dishInformation()),
            ],
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              children: [
                const SizedBox(height: 20),
                delivering(),
                divider,
                dishDescription(),
                divider,
                extraDish(),
                const SizedBox(height: 50)
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        elevation: 0,
        backgroundColor: const Color(0xff27c96d),
        shape: const RoundedRectangleBorder(),
        label: const SizedBox(
          width: 280,
          child: Align(
            alignment: Alignment.center,
            child: Text('Add to cart'),
          ),
        ),
      ),
    );
  }

  Hero backgroundImage(double heigth) {
    return Hero(
      tag: dishModel.id,
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        width: double.infinity,
        height: heigth,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          image: DecorationImage(
            fit: BoxFit.none,
            image: NetworkImage(dishModel.urlImage, scale: 0.7),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.arrow_back, color: Colors.white),
            Spacer(),
            Icon(Icons.share_outlined, color: Colors.white),
            SizedBox(width: 20),
            Icon(Icons.bookmark_outline, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Column dishInformation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(dishModel.name,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),
        Text(dishModel.foodStyle,
            style: const TextStyle(
              color: Colors.white54,
            )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Rating(rate: dishModel.rating),
            const SizedBox(width: 5),
            Text(
              dishModel.price,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white70,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget delivering() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('DELIVERING FOOD TO',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            )),
        const SizedBox(height: 5),
        Row(
          children: const [
            Icon(Icons.pin_drop_sharp, color: colorGreen, size: 16),
            Text(' 189 Gerald Moerdyk Street, Pretoria',
                style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(Icons.timer, color: Colors.grey, size: 16),
            Text(' 30 minutes away',
                style: TextStyle(color: Colors.grey, fontSize: 12))
          ],
        ),
      ],
    );
  }

  Widget dishDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'INSIDER INFO',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const SizedBox(height: 10),
        Text(dishModel.description)
      ],
    );
  }

  Widget extraDish() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'EXTRAS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          ExtraItem(colorGreen: colorGreen)
        ],
      ),
    );
  }
}
