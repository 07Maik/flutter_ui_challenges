import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  static const List<String> filterMenu = [
    "Dresses",
    "Jackets",
    "Jeans",
    "Shoes",
    "T-shirts",
    "Skirts",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterMenu.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              left: index == 0 ? 28 : 16,
              right: index + 1 == filterMenu.length ? 28 : 0,
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: index == 0 ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black12, width: 1.5),
            ),
            child: Text(
              filterMenu[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: index == 0 ? Colors.white : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
