import 'package:flutter/material.dart';

import '../custom/colors.dart';

class CustomBackButton extends StatelessWidget {
  final Function() onTap;
  const CustomBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        color: CustomColors.buttonColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: const Icon(
          Icons.arrow_back_ios_rounded,
          color: CustomColors.black,
        ),
      ),
    );
  }
}
