import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              S.of(context).readFreeBook,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
