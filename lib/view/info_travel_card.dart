import 'package:flutter/material.dart';

import '../custom/text_stile.dart';

class InfoTravelCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String number1;
  final String number2;
  final String number3;
  const InfoTravelCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.number1,
    required this.number2,
    required this.number3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shadowColor: Colors.blueGrey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: SizedBox(
                  child: Column(
                    children: [
                      const Spacer(flex: 1),
                      Text(
                        text1,
                        style: CustomStile.textStileBlack(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        number1,
                        style: CustomStile.textStileFire(),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 80,
                color: Colors.grey.shade300,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    const Spacer(flex: 1),
                    Text(
                      text2,
                      style: CustomStile.textStileBlack(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(flex: 1),
                    Text(
                      number2,
                      style: CustomStile.textStileFire(),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
              Container(
                width: 1,
                height: 80,
                color: Colors.grey.shade300,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    const Spacer(flex: 1),
                    Text(
                      text3,
                      style: CustomStile.textStileBlack(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(flex: 1),
                    Text(
                      number3,
                      style: CustomStile.textStileFire(),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
