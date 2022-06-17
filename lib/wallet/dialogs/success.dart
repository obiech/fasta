import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

Future<void> successDialog(
  BuildContext context,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.h)),
        contentPadding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 15.h),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/balloon.png'),
              Text(
                'Kudos!',
                style: FastaTextStyle.headline4
                    .copyWith(fontWeight: FastaFontWeight.semiBold),
              ),
              SizedBox(
                height: 8.h,
                width: 1.screenWidth,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Congratulations you just funded'
                          ' your account witn ',
                      style: FastaTextStyle.subtitle2,
                      children: [
                        TextSpan(
                            text: 'NGN 7,000',
                            style: FastaTextStyle.subtitle2
                                .copyWith(fontWeight: FastaFontWeight.semiBold))
                      ])),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text('Done', style: FastaTextStyle.hardLabel)),
                  GestureDetector(
                    onTap: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 9.h, horizontal: 27.3.w),
                      decoration: BoxDecoration(
                          color: FastaColors.primary,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(13.h)),
                      child: Center(
                        child: Text('Go To Wallet',
                            style: FastaTextStyle.hardLabel
                                .copyWith(color: FastaColors.primary2)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
