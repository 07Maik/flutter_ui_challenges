import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../data.dart';
import '../widgets/background_icons_widget.dart';
import '../widgets/card_decoration_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        background(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            lblMenu(),
            Expanded(child: menuItems()),
          ],
        ),
      ]),
    );
  }

  BackgroundIcons background() => BackgroundIcons(
        height: 1000,
        width: 450,
        iconColor: Colors.grey.withOpacity(0.15),
        minIconsPerColumn: 3,
        numberIconsPerColumn: 3,
      );

  Padding lblMenu() {
    return const Padding(
        padding: EdgeInsets.only(left: 50.0),
        child: Text(
          'What do you want to order?',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ));
  }

  Padding header() => Padding(
        padding: const EdgeInsets.only(right: 30.0, top: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.search, color: Colors.black, size: 30),
            SizedBox(width: 20),
            Icon(Icons.menu, color: Colors.black, size: 30),
          ],
        ),
      );

  Padding menuItems() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) => cardMenu(index),
          separatorBuilder: (_, __) => const SizedBox(height: 20),
        ),
      );

  Container cardMenu(int index) {
    final stack = Stack(
      children: [
        CardDecoration(index: index),
        ListTile(
          minVerticalPadding: 20,
          title: Text(menu[index]['name']!),
          contentPadding: const EdgeInsets.symmetric(horizontal: 50),
          trailing: SvgPicture.asset(
            menu[index]['path']!,
            height: 50,
          ),
        ),
      ],
    );

    return Container(
      margin: const EdgeInsets.all(1),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 3, offset: Offset(0, 1))
        ],
      ),
      child: stack,
    );
  }
}
