import 'package:flutter/material.dart';

class CustomRouteTransitions {
  final Widget child;
  final Duration duration;
  final BuildContext context;

  CustomRouteTransitions({
    required this.context,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
  }) {
    _navigateTransition();
  }

  void _navigateTransition() {
    final route = PageRouteBuilder(
        pageBuilder: (_, __, ___) => child,
        transitionDuration: duration,
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOut)),
            child: child,
          );
        });

    Navigator.push(context, route);
  }
}
