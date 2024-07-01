import 'package:flutter/material.dart';
import 'package:sayeer/utils/constants/colors.dart';

class TWhitePettern extends StatelessWidget {
  const TWhitePettern({
    super.key,
    required this.child,
    this.appbar,
  });
  final Widget child;
  final PreferredSizeWidget? appbar;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.light,
      child: Stack(
        children: [
          Column(
            children: [
              Image(
                image: AssetImage('assets/images/Pattern/Pattern 2 - up.png'),
              ),
            ],
          ),
          Scaffold(
              backgroundColor: Colors.transparent, appBar: appbar, body: child),
          Positioned(
            bottom: 0,
            child: Image(
                image: AssetImage('assets/images/Pattern/PatternDown.png')),
          ),
        ],
      ),
    );
  }
}
