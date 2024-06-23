import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';

class TDrawerMenu extends StatelessWidget {
  const TDrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: TColors.white,
            )),
      ],
    );
  }
}
