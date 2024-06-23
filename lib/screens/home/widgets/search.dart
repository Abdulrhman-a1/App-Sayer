import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayeer/common/widgets/custom_shapes/containers/search_container.dart';
import '../../../controllers/homeController.dart';

class HomeSearch extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    onPressed: () => homeController.openDrawer(context),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              TSearchContainer(
                text: 'تدور على شي معين؟',
                onTap: () => homeController.Searchbar(),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
