import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayeer/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sayeer/common/widgets/images/t_rounded_image.dart';
import 'package:sayeer/controllers/homeController.dart';
import 'package:sayeer/utils/constants/colors.dart';
import 'package:sayeer/utils/constants/sizes.dart';


class BannerModel {
  final String imageUrl;
  final VoidCallback targetUrl;

  BannerModel({required this.imageUrl, required this.targetUrl});
}

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<BannerModel> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 140,
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners
              .map((banner) => GestureDetector(
                    onTap: banner.targetUrl,
                    child: TRoundedimage(
                      width: double.infinity,
                      imagmeUrl: banner.imageUrl,
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  width: 20,
                  hight: 4,
                  margin: EdgeInsets.only(right: 10),
                  BackgroundColor: controller.carousalCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
