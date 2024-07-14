import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'oTPInputField.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({super.key, required this.Otpcontroller});
final TextEditingController Otpcontroller;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: SizedBox(
      height: 68,
      width: 64,
      child: TextField(
        controller: Otpcontroller,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.headlineMedium,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );,
          );
        }),
      ),
    );
  }
}
