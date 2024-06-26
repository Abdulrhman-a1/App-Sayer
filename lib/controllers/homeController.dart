import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sayeer/screens/Fav/Favorite.dart';
import 'package:sayeer/screens/Search/Searchscreen.dart';
import 'package:sayeer/screens/home/home_screen.dart';

class HomeController extends GetxController {
  static HomeController get Instance => Get.put(HomeController());

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void Searchbar() {
    Get.to(() => Searchscreen());
  }

  void GoToCompany() {
    //ننقل المستخدم لصفحة وكالة معينة بناءا على اللي اختارها
  }

  void handleBottomNavigation(int index) {
    switch (index) {
      case 0:
        Get.offAll(() => HomeScreen());
        break;
      case 1:
        //ننقل اليوزر لصفحة السيارات
        break;
      case 2:
        Get.to(() => FavouriteScreen());
        break;
      case 3:
        //ننقل اليوزر لحسابه
        break;
    }
  }
}
