import 'package:flutter/material.dart';
import 'package:sayeer/common/widgets/CarsList/BrandList.dart';
import 'package:sayeer/common/widgets/products.cart/product_cards.dart';
import 'package:sayeer/common/widgets/texts/section_heading.dart';
import 'package:sayeer/utils/constants/colors.dart';
import 'package:sayeer/utils/constants/image_strings.dart';
import 'package:sayeer/utils/constants/sizes.dart';

class CustomSection extends StatelessWidget {
  const CustomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TSectionHeading(
            title: 'وكلائنا',
            showActionButton: true,
            textColor: TColors.darkerGrey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.defaultSpace),
            child: Column(
              children: [
                const SizedBox(
                  height: TSizes.spaceBtwItems / 14,
                ),
                THomeCategories(categories: [
                  CategoryItem(image: TImages.genesislogo, onTap: () {}),
                  CategoryItem(image: TImages.gmclogo, onTap: () {}),
                  CategoryItem(image: TImages.cherylogo, onTap: () {}),
                  CategoryItem(image: TImages.chryslerlogo, onTap: () {}),
                  CategoryItem(image: TImages.TeotaIcon, onTap: () {}),
                  CategoryItem(image: TImages.havallogo, onTap: () {}),
                  CategoryItem(image: TImages.hondalogo, onTap: () {}),
                  CategoryItem(image: TImages.hyundailogo, onTap: () {}),
                  CategoryItem(image: TImages.infinitilogo, onTap: () {}),
                ]),
              ],
            ),
          ),
          TSectionHeading(
            title: 'السيارات الاكثر مبيعًا',
            showActionButton: true,
            textColor: TColors.darkerGrey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: TSizes.defaultSpace, vertical: TSizes.sm),
            child: SizedBox(
              height: 260,
              child: ListView.builder(
                clipBehavior: Clip.none,
                shrinkWrap: false,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: TSizes.md,
                    ),
                    child: TProductCardVertical(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
