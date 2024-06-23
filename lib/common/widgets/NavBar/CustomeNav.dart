import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../utils/constants/colors.dart';

class Bar extends StatelessWidget {
  final List<NavigationDestination> destinations;
  final ValueChanged<int> onDestinationSelected;

  const Bar({
    super.key,
    required this.destinations,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Obx(() => NavigationBar(
          backgroundColor: TColors.softGrey,
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
            onDestinationSelected(index);
          },
          destinations: destinations,
          indicatorColor: TColors.middleColor,
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
}
