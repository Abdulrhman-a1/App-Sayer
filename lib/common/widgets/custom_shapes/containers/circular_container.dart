import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.hight = 400,
    this.radius = 400,
    this.padding = 0,
    this.BackgroundColor = TColors.white,
    this.child,
    this.margin,
  });

  final double? width;
  final double? hight;
  final double radius;
  final double padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color BackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: BackgroundColor,
      ),
      child: child,
    );
  }
}
