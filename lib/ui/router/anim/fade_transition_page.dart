import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef TransitionsBuilder = Widget Function(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child);

class FadeTransitionPage extends CustomTransitionPage {
  FadeTransitionPage({
    required Widget child,
  }) : super(
          child: child,
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return Container();
          },
          transitionDuration: const Duration(milliseconds: 250),
        );

  @override
  TransitionsBuilder get transitionsBuilder {
    return buildTransitionBuilder();
  }

  TransitionsBuilder buildTransitionBuilder() {
    return (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    };
  }
}
