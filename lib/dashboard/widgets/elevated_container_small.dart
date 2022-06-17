import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedContainerSmall extends StatelessWidget {
  final String type;
  final bool isSelected;

  const ElevatedContainerSmall(
      {Key? key, required this.type, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.8.h),
      ),
      elevation: 7,
      child: Container(
        height: 41.h,
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
            Center(
                child: Image.asset('assets/fast-food.png', fit: BoxFit.cover)),
            SizedBox(
              width: 6.w,
            ),
            Text(
              type,
              style: FastaTextStyle.hardLabel2,
            ),
            SizedBox(
              width: 7.w,
            ),
            if (isSelected)
              Center(
                child: Container(
                  height: 11.8.h,
                  width: 11.8.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: FastaColors.primary),
                  child: Icon(
                    Icons.done,
                    color: FastaColors.primary2,
                    size: 8.8.h,
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
