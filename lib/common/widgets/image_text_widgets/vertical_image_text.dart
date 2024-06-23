import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../styles/widgets/shadows.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    this.title = '',
    this.textColor = TColors.darkerGrey,
    this.backgroundColor = TColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 75,
              height: 75,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                  border: Border.all(color: TColors.borderSecondary),
                  boxShadow: [TShadowStlye.verticalProductShadow],
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
