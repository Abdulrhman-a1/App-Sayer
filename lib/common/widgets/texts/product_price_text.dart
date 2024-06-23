import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText(
      {super.key,
      this.currencySign = '\ ريال شهرياً',
      required this.price,
      this.maxLines = 1,
      this.isLarge = false,
      this.lineThrough = false});

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      TextSpan(
        children: [
          TextSpan(
            text: price,
            style: isLarge
                ? Theme.of(context).textTheme.headlineMedium!.apply(
                    decoration: lineThrough ? TextDecoration.lineThrough : null)
                : Theme.of(context).textTheme.titleLarge!.apply(
                    decoration:
                        lineThrough ? TextDecoration.lineThrough : null),
          ),
          TextSpan(
            text: currencySign,
            style: Theme.of(context).textTheme.labelSmall!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null),
          ),
        ],
      ),
    );
    // Text(
    //   price + currencySign,
    //   overflow: TextOverflow.ellipsis,
    //   maxLines: maxLines,
    //   style: isLarge
    //       ? Theme.of(context).textTheme.headlineMedium!.apply(
    //           decoration: lineThrough ? TextDecoration.lineThrough : null)
    //       : Theme.of(context).textTheme.titleLarge!.apply(
    //           decoration: lineThrough ? TextDecoration.lineThrough : null),
    // );
  }
}
