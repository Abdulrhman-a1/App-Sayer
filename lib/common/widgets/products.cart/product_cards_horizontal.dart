import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/data/models/car.dart';
import 'package:sayeer/utils/constants/enums.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../icons/t_circular_icon.dart';
import '../images/t_rounded_image.dart';
import '../../styles/widgets/shadows.dart';
import '../texts/product_price_text.dart';
import '../texts/product_title_text.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal(
      {super.key, this.showFavouriteIcon = false, required this.cars});

  final bool? showFavouriteIcon;
  final List<Car> cars;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [TShadowStlye.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: TColors.white,
      ),
      child: GestureDetector(
        onTap: () {},
        child: TRoundedContainer(
          padding: EdgeInsets.all(TSizes.xs),
          backgroundColor: TColors.white,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //Favourite Icon Button
                if (showFavouriteIcon!)
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
                            title: cars[0].BrandName,
                            maxLines: 1,
                          ),

                          //Car Name
                          TProductTitleText(
                            title: cars[0].name + ' ' + cars[0].model,
                            maxLines: 1,
                            smallSize: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),

              // Thumbanul image
              TRoundedimage(
                BackgroundColor: Colors.transparent,
                fit: BoxFit.fill,
                imagmeUrl: cars[0].image,
                applyImageRadius: true,
              ),
              SizedBox(height: TSizes.spaceBtwItems / 4),
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

                    SizedBox(height: TSizes.spaceBtwItems / 4),

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
      ),
    );
  }
}
