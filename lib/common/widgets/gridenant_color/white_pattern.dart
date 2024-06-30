import 'package:flutter/material.dart';

class TWhitePettern extends StatelessWidget {
  const TWhitePettern({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image(
              image: AssetImage('assets/images/Pattern/Pattern 2 - up.png'),
            ),
          ],
        ),
        child,
        Positioned(
          bottom: 0,
          child:
              Image(image: AssetImage('assets/images/Pattern/PatternDown.png')),
        ),
      ],
    );
  }
}
