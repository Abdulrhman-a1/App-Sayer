import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  final VoidCallback onSignIn;

  const TLoginForm({
    required this.onSignIn,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MedilContainer(onSignIn: onSignIn);
  }
}

class MedilContainer extends StatelessWidget {
  final VoidCallback onSignIn;

  const MedilContainer({
    required this.onSignIn,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_iphone,
                  ),
                  labelText: TTexts.phoneNum,
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onSignIn,
                  child: Text(
                    TTexts.signIn,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .apply(color: TColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
