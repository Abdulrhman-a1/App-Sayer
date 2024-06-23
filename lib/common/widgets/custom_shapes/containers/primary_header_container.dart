import 'package:sayeer/common/widgets/gridenant_color/gradient_color.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TGradientColor(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              child,
            ],
          ),
        ),
      ),
    );
  }
}
