import 'package:flutter/material.dart';

import '../customs/colors.dart';
import '../customs/text_stile.dart';

class UserInfo extends StatelessWidget {
  final String userName;
  final String email;
  final AssetImage image;
  const UserInfo(
      {super.key,
      required this.userName,
      required this.email,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: CustomColors.pink,
          child: Image(
            image: image,
          ),
        ),
        Text(
          userName,
          style: CustomStile.textStileBlack(
            fontSize: 23,
          ),
        ),
        Text(
          email,
          style: CustomStile.textStileGrey(),
        ),
      ],
    );
  }
}
