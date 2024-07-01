import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayeer/utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class TDefaultAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TDefaultAppbar({
    super.key,
    this.title,
    this.showbackArrow = false,
    this.leadingIcon,
    this.action,
    this.leadingOnPressed,
    this.arrowColor,
  });
  final String? title;
  final bool showbackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;
  final Color? arrowColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.md,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: showbackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: arrowColor ?? Colors.white,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(leadingIcon),
                  )
                : SizedBox(
                    width: 20,
                  ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              TImages.Sayerlogo,
              width: 50,
              height: 50,
            ),
          ],
        ),
        actions: [
          if (action != null) ...action!,
          // Add a SizedBox to balance the centered title when there are actions
          SizedBox(
              width:
                  TSizes.appBarHeight), // Adjust the width based on your needs
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
