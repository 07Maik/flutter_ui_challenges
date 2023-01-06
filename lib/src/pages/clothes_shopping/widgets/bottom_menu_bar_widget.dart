import 'package:flutter/material.dart';

class BottomMenuBar extends StatelessWidget {
  const BottomMenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[100]!,
            blurRadius: 2,
            offset: const Offset(0, -1),
          )
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 90,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Icon(
                    Icons.home_rounded,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
