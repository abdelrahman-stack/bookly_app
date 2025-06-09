import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimatin});

  final Animation<Offset> slidingAnimatin;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimatin,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimatin,
          child: const Text('Read Free Books',style: Styles.textstyle18, textAlign: TextAlign.center),
        );
      },
    );
  }
}
