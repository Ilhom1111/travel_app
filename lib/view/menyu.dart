import 'package:flutter/material.dart';
import 'package:travel_app/customs/strings.dart';

import '../customs/colors.dart';
import '../customs/icons.dart';
import '../customs/text_stile.dart';

class Menyu extends StatelessWidget {
  final Function() prsProfile;
  final Function() prsBookmarked;
  final Function() prsPreviousTrips;
  final Function() prsSettings;
  final Function() prsVersion;
  const Menyu({
    super.key,
    required this.prsProfile,
    required this.prsBookmarked,
    required this.prsPreviousTrips,
    required this.prsSettings,
    required this.prsVersion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shadowColor: Colors.blueGrey.shade200,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            const SizedBox(height: 10),
            ListTile(
              onTap: prsProfile,
              leading: const Image(
                image: CustomIcons.person,
                width: 24,
              ),
              title: Text(
                CustomStrings.profile,
                style: CustomStile.textStileBlack(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: CustomColors.grey,
                size: 18,
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 1,
              color: Colors.grey.shade300,
            ),
            ListTile(
              onTap: prsBookmarked,
              leading: const Image(
                image: CustomIcons.bookmark,
                width: 24,
              ),
              title: Text(
                CustomStrings.bookmarked,
                style: CustomStile.textStileBlack(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: CustomColors.grey,
                size: 18,
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 1,
              color: Colors.grey.shade300,
            ),
            ListTile(
              onTap: prsPreviousTrips,
              leading: const Image(
                image: CustomIcons.previousTrips,
                width: 24,
              ),
              title: Text(
                CustomStrings.previous,
                style: CustomStile.textStileBlack(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: CustomColors.grey,
                size: 18,
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 1,
              color: Colors.grey.shade300,
            ),
            ListTile(
              onTap: prsSettings,
              leading: const Image(
                image: CustomIcons.settings,
                width: 24,
              ),
              title: Text(
                CustomStrings.settings,
                style: CustomStile.textStileBlack(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: CustomColors.grey,
                size: 18,
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 1,
              color: Colors.grey.shade300,
            ),
            ListTile(
              onTap: prsVersion,
              leading: const Image(
                image: CustomIcons.version,
                width: 24,
              ),
              title: Text(
                CustomStrings.version,
                style: CustomStile.textStileBlack(),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: CustomColors.grey,
                size: 18,
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
