import 'package:sayeer/utils/constants/colors.dart';
import 'package:sayeer/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: TColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections * 2.5, horizontal: TSizes.md),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الصفحة الرئيسية',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.home,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'العروض',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.discount_shape,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الطلبات',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.clipboard_text,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الوكالات',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.car,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),

            // Section 2

            Divider(),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'من نحن ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.people,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' تواصل معنا',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.send_14,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' الدعم الفني',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.call,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' الاعدادت',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.setting_4,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الاشعارات',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.notification,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تسجيل الخروج',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: TColors.darkerGrey,
                    ),
                  ),
                  Icon(
                    Iconsax.logout,
                    color: TColors.darkerGrey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
