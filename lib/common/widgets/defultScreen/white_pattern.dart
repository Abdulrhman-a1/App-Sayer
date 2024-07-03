import 'package:flutter/material.dart';
import 'package:sayeer/utils/constants/colors.dart';

class TWhitePettern extends StatelessWidget {
  const TWhitePettern({
    super.key,
    required this.child,
    this.appBar,
    this.drawer,
    this.bottomNavigationBar,
  });
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? bottomNavigationBar;

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
            backgroundColor: Colors.transparent,
            appBar: appBar,
            body: child,
            drawer: drawer ?? null,
            bottomNavigationBar: bottomNavigationBar ?? null,
          ),
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
