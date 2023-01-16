import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../model/item_shopping_model.dart';
import 'widgets/buy_button_widget.dart';
import 'widgets/rating_widget.dart';
import 'widgets/sizes_widget.dart';

class DetailScreen extends StatelessWidget {
  final ItemShoppingModel item;

  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const SizedBox(height: double.infinity),
          backgroundImage(),
          clothesDetail(),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Positioned backgroundImage() {
    return Positioned(
      top: 0,
      width: 450,
      child: Stack(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              color: Color(item.colorBackground),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: NetworkImage(item.pathImage),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Constants.secondColor,
                foregroundColor: Constants.primaryColor,
                child: Icon(Icons.arrow_back, size: 16),
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 30,
            child: IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Constants.primaryColor,
                foregroundColor: Constants.secondColor,
                child: Icon(Icons.shopping_bag_outlined, size: 16),
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            right: 30,
            child: IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundColor: Constants.primaryColor,
                  foregroundColor: Constants.secondColor,
                  child: Icon(Icons.thumb_up_outlined, size: 16),
                )),
          ),
        ],
      ),
    );
  }

  Container clothesDetail() {
    return Container(
      height: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    item.brand,
                    style: GoogleFonts.kanit(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _amount()
                ],
              ),
              const SizedBox(height: 10),
              const Rating(rate: 4.5, reviewQuantity: 270),
              const SizedBox(height: 20),
              const Sizes(),
              const SizedBox(height: 20),
              _description(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _amount() {
    return Container(
      width: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.remove, size: 12),
            Text('1'),
            Icon(Icons.add, size: 12),
          ]),
    );
  }

  Widget _description() {
    const space = SizedBox(height: 10);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: GoogleFonts.kanit(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        space,
        Text(
          item.description,
          style: const TextStyle(fontSize: 12, color: Colors.black54),
        ),
        space,
      ],
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      alignment: Alignment.center,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total price',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Text(
                item.price,
                style: GoogleFonts.kanit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const BuyButton()
        ],
      ),
    );
  }
}
