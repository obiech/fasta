import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedContainerCircular extends StatelessWidget {
  final String type, image;
  final bool isSelected;

  const ElevatedContainerCircular(
      {Key? key,
      required this.type,
      required this.isSelected,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.8.h),
      ),
      elevation: 7,
      child: Container(
        height: 64.h,
        width: 328.w,
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        decoration: BoxDecoration(
            border: Border.all(color: FastaColors.primary2, width: 3.f),
            color: FastaColors.grey3,
            borderRadius: BorderRadius.circular(9.8.h)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                  child: Image.asset('assets/$image.png', fit: BoxFit.contain)),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              flex: 8,
              child: Text(
                type,
                style: FastaTextStyle.hardLabel,
              ),
            ),
            (isSelected)
                ? Expanded(
                    child: Center(
                    child: Container(
                        height: 22.8.h,
                        width: 22.8.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5.h, color: FastaColors.primary2),
                            color: FastaColors.primary),
                        child: Icon(
                          Icons.done,
                          color: FastaColors.primary2,
                          size: 13.h,
                        )),
                  ))
                : const Offstage()
          ],
        ),
      ),
    );
  }
}
