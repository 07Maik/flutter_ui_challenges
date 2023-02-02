import 'package:flutter/material.dart';

class CustomBottomMenu extends StatelessWidget {
  const CustomBottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 2,
              offset: const Offset(0, -1))
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.storefront_rounded,
            size: 35,
            color: Colors.black,
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            radius: 25,
            child: Icon(Icons.add, size: 35),
          ),
          Icon(
            Icons.bookmark_outline_sharp,
            size: 35,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
