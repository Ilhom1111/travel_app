import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:travel_app/customs/images.dart';
import 'package:travel_app/customs/strings.dart';
import 'package:travel_app/customs/text_stile.dart';
import 'package:travel_app/view/back_button.dart';
import 'package:travel_app/view/edit_button.dart';
import 'package:travel_app/view/user_info.dart';

import '../view/info_travel_card.dart';
import '../view/menyu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(flex: 1),
                CustomBackButton(onTap: () {
                  log("back button");
                }),
                const Spacer(flex: 5),
                Text(
                  CustomStrings.profile,
                  style: CustomStile.textStileBlack(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(flex: 5),
                EditButton(
                  onTap: () {
                    log("edit button");
                  },
                ),
                const Spacer(flex: 1),
              ],
            ),
            const Spacer(flex: 4),
            const UserInfo(
              userName: CustomStrings.userName,
              email: CustomStrings.email,
              image: CustomImages.userImage,
            ),
            const Spacer(flex: 3),
            const InfoTravelCard(
              text1: CustomStrings.reward,
              text2: CustomStrings.travel,
              text3: CustomStrings.bucket,
              number1: '50',
              number2: '40',
              number3: '200',
            ),
            const Spacer(flex: 3),
            Menyu(
              prsProfile: () {
                log("Profile");
              },
              prsBookmarked: () {
                log("Bookmarked");
              },
              prsPreviousTrips: () {
                log("Previous Trips");
              },
              prsSettings: () {
                log("Settings");
              },
              prsVersion: () {
                log("Version");
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
