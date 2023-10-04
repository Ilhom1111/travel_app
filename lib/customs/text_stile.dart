import 'package:flutter/material.dart';
import 'package:travel_app/customs/colors.dart';

sealed class CustomStile {
  static TextStyle textStileBlack({
    double fontSize = 15,
    FontWeight fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
      color: CustomColors.black,
      fontSize: fontSize,
      fontFamily: 'SF UI Display',
      fontWeight: fontWeight,
    );
  }

  static TextStyle textStileGrey() {
    return const TextStyle(
      color: CustomColors.grey,
      fontSize: 14,
      fontFamily: 'SF UI Display',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStileFire() {
    return const TextStyle(
      color: CustomColors.fireColor,
      fontSize: 16,
      fontFamily: 'SF UI Display',
      fontWeight: FontWeight.w600,
    );
  }
}
