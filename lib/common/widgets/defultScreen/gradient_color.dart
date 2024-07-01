import 'package:sayeer/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TGradientColor extends StatelessWidget {
  const TGradientColor({
    super.key,
    required this.child,
    this.appBar,
  });
  final Widget child;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: THelperFunctions.screenHeight(),
        width: THelperFunctions.screenWidth(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, -0.2),
            colors: [
              TColors.GradientStart,
              TColors.white,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar,
          body: child,
        ));
  }
}
