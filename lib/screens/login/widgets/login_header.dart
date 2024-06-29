import 'package:flutter/material.dart';
import 'package:sayeer/utils/constants/colors.dart';
import 'package:sayeer/utils/constants/sizes.dart';
import 'package:sayeer/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  // all size should be predefined
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      child: Column(
        children: [
          Image(
            fit: BoxFit.cover,
            height: 150,
            image: AssetImage('assets/logos/Logog.png'),
          ),
          const SizedBox(height: 30),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    text: '${TTexts.loginTitle} ',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        //Color should be predefined
                        color: Color(0xFF64748B),
                        // Tcolors.darkGrey, Suggestions color
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: '${TTexts.appName}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                color: TColors.Ssecondery,
                                fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  '${TTexts.loginsubTitle}\n${TTexts.Verify}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        //Color should be predefined
                        color: Color(0xFF112D4E),
                        // Suggestions color
                        //color: TColors.darkGrey,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
