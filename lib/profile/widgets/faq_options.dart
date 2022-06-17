import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class FAQOptions extends StatelessWidget {
  const FAQOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: FastaColors.grey10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
          side: BorderSide(color: FastaColors.primary2, width: 3.h)),
      child: Container(
        width: 1.screenWidth,
        height: 38.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        // margin: EdgeInsets.only(bottom: 11.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'How to Fund your wallet',
              style: FastaTextStyle.subtitle3,
            ),
            const Icon(Icons.keyboard_arrow_down_outlined)
          ],
        ),
      ),
    );
  }
}
