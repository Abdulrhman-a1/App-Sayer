import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/common/widgets/appbar/default_appbar.dart';
import 'package:sayeer/screens/Search/Searchscreen.dart';
import 'package:sayeer/utils/constants/sizes.dart';
import 'package:sayeer/utils/helpers/extenstions.dart';

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
    return TWhitePettern(
      appbar: TDefaultAppbar(
        showbackArrow: true,
        arrowColor: Colors.black,
      ),
      child: Container(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: TSizes.lg),
            RichText(
              text: TextSpan(
                text: 'محتار!\n',
                style: Theme.of(context).textTheme.headlineMedium,
                children: [
                  TextSpan(
                    text: 'ساير حلها، ',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextSpan(
                    text:
                        'قم بإدخال معلومات دخلك لمساعدتك في اختبار السيارة المناسبة لك',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
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
                  prefixIcon: Icon(Iconsax.moneys),
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
    );
  }
}
