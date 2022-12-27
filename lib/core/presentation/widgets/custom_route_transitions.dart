import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';
import 'package:flutter_ui_challenges/core/presentation/pages/layout_page.dart';

class CustomRouteTransitions {
  final Widget child;
  final BuildContext context;
  final Duration duration;

  CustomRouteTransitions({
    required this.context,
    required this.child,
    required this.duration,
  });

  PageRouteBuilder customRoute(Widget view) {
    final route = PageRouteBuilder(
        pageBuilder: (_, __, ___) => view,
        transitionDuration: duration,
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOut)),
            child: child,
          );
        });

    return route;
  }

  void navigateTransition([bool isReplacement = false]) {
    if (isReplacement) {
      Navigator.pushReplacement(context, customRoute(child));
    } else {
      Navigator.push(context, customRoute(child));
    }
  }

  void navigateTransitionOnLayout(DesignDeviceType designDeviceType,
      [bool isReplacement = false]) {
    final view = LayoutPage(
      deviceType: designDeviceType,
      child: child,
    );

    if (isReplacement) {
      Navigator.pushReplacement(context, customRoute(view));
    } else {
      Navigator.push(context, customRoute(view));
    }
  }
}
