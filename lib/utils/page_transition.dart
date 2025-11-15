import 'package:flutter/material.dart';

class SlideTransitionSwitcher extends StatelessWidget {
  final Widget child;
  const SlideTransitionSwitcher({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 280),
      switchInCurve: Curves.easeOutQuad,
      switchOutCurve: Curves.easeInQuad,

      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },

      child: child,
    );
  }
}
