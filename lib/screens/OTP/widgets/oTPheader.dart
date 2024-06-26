import 'package:flutter/material.dart';
import '../../../../../utils/constants/text_strings.dart';

class OTPHeader extends StatelessWidget {
  const OTPHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Text(
            TTexts.confirmPhoneNum,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'تم إرسال كود على الرقم ( 0542772934 )',
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Text(
            'من فضلك، ادخل رمز التحقق المكون من ٤ ارقام',
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
