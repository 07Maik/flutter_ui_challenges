import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/item_shopping_model.dart';
import '../widgets/rating_widget.dart';
import '../widgets/sizes_widget.dart';

class DetailScreen extends StatelessWidget {
  final ItemShoppingModel item;

  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const SizedBox(height: double.infinity),
          Positioned(
            top: 0,
            width: 450,
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                  color: Color(item.colorBackground),
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: NetworkImage(item.pathImage),
                  )),
            ),
          ),
          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
              // margin: EdgeInsets.only(bottom: 100),
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
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 60,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.remove,
                                  size: 12,
                                ),
                                Text('1'),
                                Icon(
                                  Icons.add,
                                  size: 12,
                                ),
                              ]),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Rating(rate: 4.5, reviewQuantity: 270),
                    const SizedBox(height: 20),
                    const Sizes(),
                    const SizedBox(height: 20),
                    description(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  '\$245.00',
                  style: GoogleFonts.kanit(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white),
                onPressed: (() {}),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: const [
                      Icon(Icons.shopping_bag_outlined, size: 20),
                      SizedBox(width: 16),
                      Text(
                        'Add to cart',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Column description() {
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
        const SizedBox(height: 10),
        Text(
          item.description,
          style: const TextStyle(fontSize: 12, color: Colors.black54),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
