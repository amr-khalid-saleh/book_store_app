import 'package:flutter/material.dart';

class SlidingAnimationText extends StatelessWidget {
  const SlidingAnimationText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, widget) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Buy your favourite book from here.',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        );
      },
    );
  }
}
