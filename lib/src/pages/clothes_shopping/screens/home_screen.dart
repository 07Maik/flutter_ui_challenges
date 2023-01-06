import 'package:flutter/material.dart';

import '../widgets/bottom_menu_bar_widget.dart';
import '../widgets/filter_widget.dart';
import '../widgets/list_items_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: SafeArea(
        child: Column(
          children: [
            header(),
            const SizedBox(height: 10),
            search(),
            const SizedBox(height: 20),
            const Filter(),
            const SizedBox(height: 20),
            const Expanded(child: ListItems()),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }

  Widget header() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            child: Icon(Icons.menu, size: 16),
          ),
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
                "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068542/flutter_ui/pexels-pixabay-220453_ce1kx9.jpg"),
          ),
        ],
      ),
    );
  }

  Widget search() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                constraints: const BoxConstraints(maxHeight: 50),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 28,
                ),
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                hintText: 'Search...',
              ),
            ),
          ),
          const SizedBox(width: 16),
          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            child: Icon(
              Icons.filter_list_rounded,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
