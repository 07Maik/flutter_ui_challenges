import 'package:flutter/widgets.dart';

enum ChallengeCategory { screen, appClone }

class RouteModel {
  final String title;
  final String description;
  final Widget child;
  final ChallengeCategory category;

  RouteModel({
    required this.title,
    required this.description,
    required this.child,
    this.category = ChallengeCategory.screen,
  });
}
