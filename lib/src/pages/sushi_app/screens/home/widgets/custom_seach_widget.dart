import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xfff7f7f7),
          borderRadius: BorderRadius.circular(25)),
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10, right: 5),
              child: Icon(
                Icons.search_outlined,
                color: Color(0xffc2c2c2),
                size: 28,
              ),
            ),
            hintText: 'Search for sushi',
            hintStyle: TextStyle(color: Color(0xffcdcdcd))),
      ),
    );
  }
}
