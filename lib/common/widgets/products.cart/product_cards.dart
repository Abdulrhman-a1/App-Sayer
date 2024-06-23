import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../icons/t_circular_icon.dart';
import '../images/t_rounded_image.dart';
import '../../styles/widgets/shadows.dart';
import '../texts/product_price_text.dart';
import '../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: 245,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [TShadowStlye.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: TColors.white,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            TRoundedContainer(
              height: 170,
              padding: EdgeInsets.all(TSizes.xs),
              backgroundColor: TColors.white,
              child: Stack(
                children: [
                  //Favourite Icon Button
                  Positioned(
                    top: 1,
                    right: 1,
                    child: TCircularIcon(
                      width: 40,
                      height: 40,
                      backgroundColor: TColors.light,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),

                  //Title
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //Company Name
                            TProductTitleText(
                              title: 'Dodge',
                              maxLines: 1,
                            ),

                            //Car Name
                            TProductTitleText(
                              title: 'Charger R/T',
                              maxLines: 1,
                              smallSize: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Thumbanul image
                  Positioned(
                    bottom: -20,
                    child: TRoundedimage(
                      BackgroundColor: Colors.transparent,
                      fit: BoxFit.fill,
                      imagmeUrl: TImages.DodgeCharger,
                      applyImageRadius: true,
                    ),
                  ),
                ],
              ),
            ),

            // Divider
            Flexible(
                child: Divider(
              color: TColors.darkGrey,
              thickness: 0.5,
              indent: 10,
              endIndent: 5,
            )),

            // Details

            Padding(
              padding: EdgeInsets.only(right: TSizes.sm, top: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Price
                      TProductPriceText(
                        price: '2192',
                      ),
                    ],
                  ),

                  //Spacing

                  SizedBox(
                    height: TSizes.spaceBtwItems / 4,
                  ),

                  //Title
                  TProductPriceText(
                    price: '189,304',
                    currencySign: '\ ريال',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
