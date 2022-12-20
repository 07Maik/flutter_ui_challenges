import 'package:flutter/cupertino.dart';

class PopularMenuModel {
  final UniqueKey id;
  final String name;
  final String foodStyle;
  final String price;
  final double rating;
  final String urlImage;
  final String description;

  PopularMenuModel({
    required this.name,
    required this.foodStyle,
    required this.price,
    required this.rating,
    required this.urlImage,
    required this.description,
  }) : id = UniqueKey();
}
