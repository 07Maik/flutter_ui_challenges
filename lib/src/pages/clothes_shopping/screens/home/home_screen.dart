import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets/bottom_menu_bar_widget.dart';
import 'widgets/category_filter_widget.dart';
import 'widgets/list_items_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: Constants.kpadding);

    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: SafeArea(
        child: Column(
          children: [
            header(),
            space,
            search(),
            space,
            const CategoryFilter(),
            space,
            const Expanded(child: ListItems()),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }

  Widget header() {
    return Container(
      margin: const EdgeInsets.only(top: Constants.kpadding),
      padding: const EdgeInsets.symmetric(horizontal: Constants.kpadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            radius: 16,
            backgroundColor: Constants.secondColor,
            foregroundColor: Constants.primaryColor,
            child: Icon(Icons.menu, size: 16),
          ),
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(Constants.profileImage),
          ),
        ],
      ),
    );
  }

  Widget search() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.kpadding),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.grey[100],
                constraints: const BoxConstraints(maxHeight: 50),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                prefixIcon: const Icon(Icons.search, size: 28),
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                hintText: 'Search...',
              ),
            ),
          ),
          const SizedBox(width: Constants.kpadding),
          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            child: Icon(Icons.filter_list_rounded, size: 20),
          ),
        ],
      ),
    );
  }
}
