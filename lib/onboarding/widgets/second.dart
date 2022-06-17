import 'package:fasta/colors/colors.dart';
import 'package:fasta/onboarding/widgets/skip.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class SecondOnboardingWidget extends StatelessWidget {
  const SecondOnboardingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1.screenHeight,
        width: 1.screenWidth,
        color: FastaColors.lightOrange,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: 68.h, left: 24.w),
            child: RichText(
              text: TextSpan(
                  text: 'Everyday Life\nMade ',
                  style: FastaTextStyle.headline1.copyWith(),
                  children: [
                    TextSpan(
                        text: 'Simple.',
                        style: FastaTextStyle.headline1.copyWith(
                          color: FastaColors.primary3,
                        ))
                  ]),
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, top: 161.h),
            child: Text(
              'We are not just a logistics company,\n'
              'We set out to make your everyday\n'
              'life simple and stress free.',
              style: FastaTextStyle.subtitle1,
            ),
          ),
          Center(child: Image.asset('assets/2.0x/world.png')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/2.0x/delivery.png'),
          )
        ]));
  }
}
