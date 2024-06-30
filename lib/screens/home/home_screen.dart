import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayeer/common/widgets/defultScreen/gradient_color.dart';
import 'package:sayeer/common/widgets/appbar/Drawer/DrawerMenu.dart';
import 'package:sayeer/controllers/homeController.dart';
import 'package:sayeer/screens/Offers/offers_screen.dart';
import 'mahtar_screen.dart';
import 'widgets/Categories.dart';
import 'package:sayeer/utils/constants/sizes.dart';
import 'widgets/search.dart';
import 'widgets/slider.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/utils/constants/image_strings.dart';
import 'package:sayeer/common/widgets/NavBar/CustomeNav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = HomeController.Instance;

    return Scaffold(
      drawer: DrawerMenu(),
      body: Stack(
        children: [
          TGradientColor(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeSearch(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace,
                    ),
                    child: TPromoSlider(
                      banners: [
                        BannerModel(
                            imageUrl: TImages.promoBannerMahtar,
                            targetUrl: () => Get.to(() => MahtarScreen())),
                        BannerModel(
                            imageUrl: TImages.promoBannerSayerOffer,
                            targetUrl: () => Get.to(() => OffersScreen())),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: TSizes.xxs,
                      bottom: TSizes.defaultSpace,
                    ),
                    child: CustomSection(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bar(
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'الرئيسية'),
          NavigationDestination(icon: Icon(Iconsax.car), label: 'السيارات'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'المفضلة'),
          NavigationDestination(
              icon: Icon(Iconsax.discount_shape), label: 'العروض'),
        ],
        onDestinationSelected: (index) {
          controller.handleBottomNavigation(index);
        },
      ),
    );
  }
}
