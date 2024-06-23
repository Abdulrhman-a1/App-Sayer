import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/oTPform.dart';
import 'widgets/oTPheader.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../controllers/otpController.dart';

class VerifyPhoneNumScreen extends StatelessWidget {
  final OTPController otpController = Get.put(OTPController());

  VerifyPhoneNumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage('assets/images/Pattern/Pattern 2 - up.png')),
          Column(
            children: [
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: otpController.backButton,
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      OTPHeader(),
                      const SizedBox(height: TSizes.spaceBtwSections / 2),
                      OTPForm(),
                      const SizedBox(height: TSizes.spaceBtwItems / 2),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: otpController.resendOTP,
                          child: const Text(
                            TTexts.resendPhoneNum,
                            style: TextStyle(color: TColors.darkerGrey),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: otpController.verifyButton,
                          child: Text(
                            TTexts.tContinue,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Image(
                image: AssetImage('assets/images/Pattern/PatternDown.png')),
          ),
        ],
      ),
    );
  }
}
