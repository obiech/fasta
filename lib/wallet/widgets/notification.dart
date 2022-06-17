import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationMessage extends StatelessWidget {
  final Widget icon, content, timeRecieved;
  final double? radius;
  final EdgeInsets? padding;

  const NotificationMessage({
    required this.icon,
    required this.content,
    required this.timeRecieved,
    this.padding,
    this.radius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: 23.w,
          ),
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
          border: Border.all(color: FastaColors.grey9),
          color: FastaColors.grey10,
          borderRadius: BorderRadius.circular(radius ?? 20.h)),
      height: 53.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          // const Icon(Icons.circle_outlined, color: FastaColors.lightBlue),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            child: content,
          ),
          timeRecieved,
        ],
      ),
    );
  }
}
