import 'package:flutter/material.dart';
import 'package:sayeer/common/widgets/image_text_widgets/vertical_image_text.dart';

class CategoryItem {
  final String image;
  final VoidCallback onTap;

  CategoryItem({required this.image, required this.onTap});
}

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<CategoryItem> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final category = categories[index];
          return TVerticalImageText(
            image: category.image,
            onTap: category.onTap,
          );
        },
      ),
    );
  }
}
