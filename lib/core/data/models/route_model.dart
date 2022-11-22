import 'package:flutter/widgets.dart';

enum ChallengeCategory { screen, appClone }

class RouteModel {
  final String title;
  final String description;
  final Widget child;
  final ChallengeCategory category;
  final bool isMobile;
  final Map<String, String>? designSource;

  RouteModel({
    required this.title,
    required this.description,
    required this.child,
    this.designSource,
    this.isMobile = true,
    this.category = ChallengeCategory.screen,
  });
}
