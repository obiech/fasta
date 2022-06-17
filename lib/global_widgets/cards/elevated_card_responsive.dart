import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedCardResponsive extends StatelessWidget {
  final String? type, image;
  final bool isSelected;
  final double? height, width;
  final MainAxisAlignment? mainAxisAlignment;
  final List<Widget>? children;
  const ElevatedCardResponsive(
      {Key? key,
      this.type,
      this.image,
      required this.isSelected,
      this.mainAxisAlignment,
      this.children,
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
        width: width ?? 112.w,
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
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          children: [
            if (children != null) ...children!,
            if (children == null)
              Expanded(
                child: Image.asset(
                  'assets/$image.png',
                ),
              ),
            if (children == null)
              SizedBox(
                width: 6.w,
              ),
            if (children == null)
              Expanded(
                child: Text(
                  type.toString(),
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
