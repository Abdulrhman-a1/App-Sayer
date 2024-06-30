import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/common/widgets/defultScreen/gradient_color.dart';
import 'package:sayeer/controllers/Router/app_router.dart';
import 'package:sayeer/controllers/Router/routers.dart';
import 'package:sayeer/screens/Search/Searchscreen.dart';
import 'package:sayeer/utils/constants/colors.dart';
import 'package:sayeer/utils/constants/sizes.dart';

import '../../common/widgets/defultScreen/white_pattern.dart';

class MahtarScreen extends StatefulWidget {
  const MahtarScreen();

  @override
  _MahtarScreenState createState() => _MahtarScreenState();
}

class _MahtarScreenState extends State<MahtarScreen> {
  bool isCheckboxChecked = false;
  String additionalInfo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TWhitePettern(
        child: Container(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: TSizes.lg * 5),
              Text(
                'ادخل معلومات الدخل الخاص بك لنقدم لك عروض تناسب دخلك ومعرفة القسط الشهري المستحق لتساعدك في اتخاذ قرار الشراء',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.money),
                  labelText: 'الراتب الشهري',
                ),
                onChanged: (value) {},
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
                children: [
                  Checkbox(
                    value: isCheckboxChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckboxChecked = value ?? false;
                      });
                    },
                  ),
                  Text('هل لديك التزامات مادية؟'),
                ],
              ),
              if (isCheckboxChecked)
                TextField(
                  decoration: InputDecoration(
                    labelText: 'مجموع الالتزامات',
                  ),
                  onChanged: (value) {
                    setState(() {
                      additionalInfo = value;
                    });
                  },
                ),
              SizedBox(height: TSizes.spaceBtwInputFields),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => Searchscreen()),
                  child: Text('بحث'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
