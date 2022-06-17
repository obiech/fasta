import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/text_fields/text_field_with_hint_text.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/dialogs/account_details.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';

Future<void> inputAccountDetailsDialog(
    BuildContext context, TextEditingController controller) async {
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
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose Destination account number',
                style: FastaTextStyle.softSubtitle,
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomHintTextField(
                controller: controller,
                hintText: '   Account Number',
              ),
              SizedBox(
                height: 42.h,
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
                      accountDetailsDialog(context);
                    },
                    child: Container(
                      height: 45.h,
                      width: 148.w,
                      decoration: BoxDecoration(
                          color: FastaColors.primary,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(13.h)),
                      child: Center(
                        child: Text('Continue',
                            style: FastaTextStyle.hardLabel
                                .copyWith(color: FastaColors.primary2)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 132.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
