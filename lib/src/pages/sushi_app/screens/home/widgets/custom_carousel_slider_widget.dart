import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';
import 'package:flutter_ui_challenges/src/pages/sushi_app/screens/detail/food_dish_detail_screen.dart';

import '../../../models/popular_menu_model.dart';
import '../../detail/widgets/rating_widget.dart';

class CustomCarouselSlider extends StatefulWidget {
  final List<PopularMenuModel> items;

  const CustomCarouselSlider({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  late PageController controller;
  late int activePage;
  late Size size;

  @override
  void initState() {
    controller = PageController(viewportFraction: 0.85, initialPage: 0);
    activePage = 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (size.height >= 800) size = const Size(450, 800);

    return SizedBox(
        height: size.height * 0.50,
        width: size.width,
        child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: controller,
            itemCount: widget.items.length,
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            onPageChanged: (value) => setState(() => activePage = value),
            itemBuilder: (context, index) => card(index)));
  }

  Widget card(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.symmetric(vertical: activePage == index ? 0 : 40),
      margin: EdgeInsets.only(right: activePage == index ? 15 : 40),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          cardDescription(index),
          cardImage(index),
        ],
      ),
    );
  }

  Widget cardDescription(int index) {
    final model = widget.items[index];

    return Container(
      padding: const EdgeInsets.all(15),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xfff2f2f2),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            model.name,
            style: GoogleFonts.rubik(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(model.price, style: const TextStyle(color: Color(0xff949494)))
        ],
      ),
    );
  }

  Hero cardImage(int index) {
    final model = widget.items[index];

    const iconBookMark = Icon(Icons.bookmark_outline, color: Colors.white);

    return Hero(
      tag: model.id,
      child: GestureDetector(
        onTap: (() {
          CustomRouteTransitions(
            duration: const Duration(milliseconds: 500),
            context: context,
            child: FoodDishDetail(dishModel: model),
          ).navigateTransitionOnLayout(DesignDeviceType.mobile);
        }),
        child: AnimatedContainer(
          margin: const EdgeInsets.only(bottom: 70),
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(model.urlImage),
              )),
          child: Stack(
            children: [
              const Positioned(right: 20, top: 15, child: iconBookMark),
              Positioned(bottom: 10, left: 15, child: _cardImageRating(index))
            ],
          ),
        ),
      ),
    );
  }

  Column _cardImageRating(int index) {
    final model = widget.items[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Rating(rate: model.rating),
        const SizedBox(height: 5),
        Text(model.price,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ))
      ],
    );
  }
}
