import 'package:flutter/material.dart';

import '../../../../utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.brandTextSize = TextSizes.small,
    this.textAling = TextAlign.center,
    this.color,
  });

  final String title;
  final int maxLines;
  final Color? color;
  final TextSizes brandTextSize;
  final TextAlign? textAling;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAling,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
