import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

import '../data.dart';
import '../widgets/custom_bottom_menu_widget.dart';
import '../widgets/custom_carousel_slider_widget.dart';
import '../widgets/custom_seach_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          header(),
          popularMenu(context),
          categoryMenu(),
        ],
      ),
      bottomNavigationBar: const CustomBottomMenu(),
    );
  }

  Widget header() {
    final greeting = Text('Hello, michael',
        style: GoogleFonts.rubik(fontSize: 22, fontWeight: FontWeight.bold));

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _headerButtons(),
          greeting,
          const CustomSearch(),
        ],
      ),
    );
  }

  Widget _headerButtons() {
    final menuIcon = Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: const Icon(
          FontAwesomeIcons.alignJustify,
          color: Colors.white,
          size: 14,
        ));

    final profilePhoto = Container(
      margin: const EdgeInsets.only(left: 20),
      height: 35,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
            image: NetworkImage(
                'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068542/flutter_ui/pexels-pixabay-220453_ce1kx9.jpg'),
            fit: BoxFit.cover),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        menuIcon,
        const Spacer(),
        const Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 30),
        profilePhoto
      ],
    );
  }

  Widget popularMenu(BuildContext context) {
    final lblCategory = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Text('Most popular',
          style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.bold)),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        lblCategory,
        const SizedBox(height: 10),
        CustomCarouselSlider(items: itemsPopularMenu),
      ],
    );
  }

  Widget categoryMenu() {
    final lblCategory = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Text('Choose \na category',
          style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.bold)),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          lblCategory,
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: itemsCategoryMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => _categoryMenucard(index),
            ),
          ),
        ],
      ),
    );
  }

  Container _categoryMenucard(int index) {
    final model = itemsCategoryMenu[index];

    return Container(
      width: 120,
      margin: EdgeInsets.only(left: index == 0 ? 35 : 0, right: 15),
      decoration: BoxDecoration(
          color: Color(model.backgroundColorHexadecimal),
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: NetworkImage(model.urlImage), scale: 5)),
    );
  }
}
