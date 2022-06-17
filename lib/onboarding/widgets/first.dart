import 'package:fasta/colors/colors.dart';
import 'package:fasta/onboarding/widgets/skip.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class FirstOnboardingWidget extends StatelessWidget {
  const FirstOnboardingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1.screenHeight,
        width: 1.screenWidth,
        color: Colors.black,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: 68.h, left: 24.w),
            child: RichText(
              text: TextSpan(
                  text: 'Your Everyday\nLogistics Made ',
                  style: FastaTextStyle.headline1.copyWith(
                    color: FastaColors.primary2,
                  ),
                  children: [
                    TextSpan(
                        text: 'Easy.',
                        style: FastaTextStyle.headline1.copyWith(
                          color: FastaColors.primary3,
                        ))
                  ]),
            ),
          ),
          Center(child: Image.asset('assets/2.0x/world.png')),
        ]));
  }
}
