import 'package:flutter/material.dart';
import 'package:sayeer/common/styles/widgets/spacing_styles.dart';
import 'package:sayeer/common/widgets/defultScreen/gradient_color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtile,
    required this.onPressed,
  });

  final String image, title, subtile;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: TGradientColor(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight * 2,
            child: Column(
              children: [
                const SizedBox(height: TSizes.spaceBtwSections),
                //Image
                Image.asset(
                  image,
                  width: THelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Title & SubTitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Text(
                  subtile,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(TTexts.tContinue),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
