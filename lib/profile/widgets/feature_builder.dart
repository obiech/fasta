import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class FeatureBuilder extends StatelessWidget {
  final String name;
  final IconData icon;
  const FeatureBuilder({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 11.h),
      height: 48.h,
      decoration: BoxDecoration(
          border: Border.all(color: FastaColors.grey9),
          borderRadius: BorderRadius.circular(15.h),
          color: FastaColors.grey10),
      padding: EdgeInsets.only(left: 13.w, right: 21.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 17.h,
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
              child: Text(
            name,
            style: FastaTextStyle.subtitle1,
          )),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 17.h,
          )
        ],
      ),
    );
  }
}
