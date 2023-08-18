
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
   SlidingText({required this.slidingAnimation});

   Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            "Read Free Books",
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }


}
