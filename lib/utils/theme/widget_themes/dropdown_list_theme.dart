import 'package:flutter/material.dart';
import 'package:sayeer/utils/constants/colors.dart';
import 'package:sayeer/utils/constants/sizes.dart';

class TDropdownListTheme {
  static final DropdownButtonTheme = DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
        vertical: TSizes.buttonHeight, horizontal: 16),
    filled: true,
    fillColor: TColors.SbuttomColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.buttonRadius),
      borderSide: const BorderSide(color: TColors.SbuttomColor),
    ),
  ));
}
