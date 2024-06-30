import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatefulWidget {
  const TLoginForm({
    required this.onSignIn,
    super.key,
    required this.formKey,
  });

  final VoidCallback onSignIn;
  final Key formKey;

  @override
  _TLoginFormState createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: widget.formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
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
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                    },
                  ),
                  Text(
                    "تذكرني",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: widget.onSignIn,
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
