import 'package:flutter/widgets.dart';

enum ChallengeCategory { screen, appClone }

enum DesignDeviceType { desktop, mobile, tablet }

class RouteModel {
  final String title;
  final String description;
  final Widget child;
  final ChallengeCategory category;
  final DesignDeviceType deviceType;
  final Map<String, String>? designSource;

  RouteModel({
    required this.title,
    required this.description,
    required this.child,
    required this.deviceType,
    this.designSource,
    this.category = ChallengeCategory.screen,
  });
}
