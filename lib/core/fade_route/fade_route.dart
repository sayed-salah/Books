import 'package:flutter/material.dart';

class FadeRoute {
  static Route create(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut, // Customize the curve if desired
              reverseCurve:
                  Curves.easeInOut, // Customize the reverse curve if desired
            ),
          ),
          child: child,
        );
      },
      transitionDuration:
          const Duration(milliseconds: 250), // Increase the duration as desired
    );
  }
}
