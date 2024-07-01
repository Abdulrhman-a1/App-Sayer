import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/common/widgets/NavBar/CustomeNav.dart';
import 'package:sayeer/common/widgets/appbar/default_appbar.dart';
import 'package:sayeer/controllers/homeController.dart';
import 'package:sayeer/screens/Search/Searchscreen.dart';
import 'package:sayeer/screens/home/home_screen.dart';
import '../../common/widgets/defultScreen/gradient_color.dart';
import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<String> favoriteItems = [];
  final HomeController controller = HomeController.Instance;

  @override
  Widget build(BuildContext context) {
    return TGradientColor(
      appBar: TDefaultAppbar(
        showbackArrow: true,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'السيارات المفضلة',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: favoriteItems.isEmpty
                ? _buildEmptyState()
                : _buildFavoriteList(),
          ),
        ],
      ),
      //   bottomNavigationBar:
      // Bar(
      //   destinations: const [
      //     NavigationDestination(icon: Icon(Iconsax.home), label: 'الرئيسية'),
      //     NavigationDestination(icon: Icon(Iconsax.car), label: 'السيارات'),
      //     NavigationDestination(icon: Icon(Iconsax.heart), label: 'المفضلة'),
      //     NavigationDestination(
      //         icon: Icon(Iconsax.discount_shape), label: 'العروض'),
      //   ],
      //   onDestinationSelected: (index) {
      //     controller.handleBottomNavigation(index);
      //   },
      // );
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline, size: 100, color: Colors.grey),
          SizedBox(height: 20),
          Text(
            'لا يوجد لديك أي سيارة في المفضلة!',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              Get.to(() => Searchscreen());
            },
            child: Text('ابحث الآن'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              side: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteList() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.3,
          child: ListView.builder(
            shrinkWrap: false,
            itemCount: favoriteItems.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.lg,
                  vertical: TSizes.md,
                ),
                // child: TProductCardHorizontal(),
              );
            },
          ),
        ),
      ),
    );
  }
}
