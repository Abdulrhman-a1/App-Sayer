import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/common/widgets/appbar/appbar.dart';
import 'package:sayeer/common/widgets/defultScreen/white_pattern.dart';
import 'package:sayeer/common/widgets/icons/t_circular_icon.dart';
import 'package:sayeer/common/widgets/layouts/grid_layout.dart';
import 'package:sayeer/common/widgets/products.cart/product_cards_horizontal.dart';
import 'package:sayeer/common/widgets/products.cart/product_cards_vertical.dart';
import 'package:sayeer/screens/home/home_screen.dart';
import 'package:sayeer/utils/constants/sizes.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: TAppbar(
      //   title: Text(
      //     'العروض',
      //     style: Theme.of(context).textTheme.headlineSmall,
      //   ),
      //   action: [
      //     TCircularIcon(
      //       icon: Iconsax.add,
      //       onPressed: () => Get.to(HomeScreen()),
      //     ),
      //   ],
      // ),
      body: TWhitePettern(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace, left: TSizes.defaultSpace),
              child: Column(
                children: [
                  TGridLayout(
                      maixAxisEctent: 230,
                      itemCount: 5,
                      itemBuilder: (_, index) => TProductCardVertical())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
