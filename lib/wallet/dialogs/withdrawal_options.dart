import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/dialogs/input_account_details.dart';
import 'package:flutter/material.dart';

Future<void> withdrawOptionsDialog(
  BuildContext context,
) async {
  final controller = TextEditingController();
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
        // titlePadding: EdgeInsets.only(top: 32.h, left: 24.w),
        title: const Center(child: Text('Withdraw')),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('choose Destination'),
              SizedBox(
                height: 25.h,
                width: 1.screenWidth,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  color: FastaColors.lightOrange,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house_siding_rounded, size: 20.h),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          inputAccountDetailsDialog(context, controller);
                        },
                        child: Text(
                          'Withdraw to Bank',
                          style: FastaTextStyle.hardLabel,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, size: 20.h)
                  ],
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  color: FastaColors.lightBlue,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.credit_card, size: 20.h),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.pop(context);
                        },
                        child: Text(
                          'Withdraw to Card',
                          style: FastaTextStyle.hardLabel,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, size: 20.h)
                  ],
                ),
              ),
              SizedBox(
                height: 160.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
