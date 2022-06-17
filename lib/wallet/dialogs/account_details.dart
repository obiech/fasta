import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/dialogs/success.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';


Future<void> accountDetailsDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.h)),
        titleTextStyle: FastaTextStyle.headline6.copyWith(
          fontSize: 26.f,
        ),
        title: const Center(child: Text('Account details')),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 34.h,
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Transfer ',
                      style: FastaTextStyle.subtitle2,
                      children: [
                        TextSpan(
                          text: 'NGN 7,000\n ',
                          style: FastaTextStyle.subtitle2
                              .copyWith(fontWeight: FastaFontWeight.semiBold),
                        ),
                        TextSpan(
                          text: 'to Bamidele Michael jamiu',
                          style: FastaTextStyle.subtitle2,
                        )
                      ])),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 128.h,
                width: 274.w,
                decoration: BoxDecoration(
                    color: FastaColors.grey5,
                    borderRadius: BorderRadius.circular(13.h)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'GTB',
                      style: FastaTextStyle.subtitle1,
                    ),
                    Text(
                      '0174091733',
                      style: FastaTextStyle.headline6,
                    ),
                    Text(
                      'Bamidele Michael Jamiu',
                      style: FastaTextStyle.subtitle1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 34.h,
                width: 1.screenWidth,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel', style: FastaTextStyle.hardLabel)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      successDialog(context);
                    },
                    child: Container(
                      height: 45.h,
                      width: 135.w,
                      decoration: BoxDecoration(
                          color: FastaColors.primary,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(13.h)),
                      child: Center(
                        child: Text('Proceed',
                            style: FastaTextStyle.hardLabel
                                .copyWith(color: FastaColors.primary2)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 81.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
