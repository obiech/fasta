import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedCardSmall extends StatelessWidget {
  final String type, image;
  final bool isSelected;
  final double? height, width;

  const ElevatedCardSmall(
      {Key? key,
      required this.type,
      required this.image,
      required this.isSelected,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.8.h),
      ),
      elevation: 7,
      child: Container(
        height: height ?? 48.h,
        width: width ?? 132.w,
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        decoration: BoxDecoration(
            border: Border.all(
                color:
                    (isSelected) ? FastaColors.primary : FastaColors.primary2,
                width: 3.f),
            color: FastaColors.grey3,
            borderRadius: BorderRadius.circular(9.8.h)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/2.0x/$image.png',
            ),
            SizedBox(
              width: 6.w,
            ),
            Expanded(
              child: Text(
                type,
                style: FastaTextStyle.hardLabel2,
              ),
            ),
            if (isSelected)
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 15.8.h,
                  width: 15.8.h,
                  margin: EdgeInsets.only(top: 6.h),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: FastaColors.primary),
                  child: Icon(
                    Icons.done,
                    color: FastaColors.primary2,
                    size: 10.8.h,
                  ),
                ),
              )
            else
              const Offstage()
          ],
        ),
      ),
    );
  }
}
