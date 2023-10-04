import 'package:flutter/material.dart';

import '../customs/colors.dart';
import '../customs/icons.dart';

class EditButton extends StatelessWidget {
  final Function() onTap;
  const EditButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        color: CustomColors.buttonColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: const Image(
          image: CustomIcons.edit,
        ),
      ),
    );
  }
}
