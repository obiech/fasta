import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class CardForEasyNavigation extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;
  const CardForEasyNavigation({
    Key? key,
    required this.name,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
          side: BorderSide(color: FastaColors.primary2, width: 3.h)),
      child: SizedBox(
        height: 137.h,
        width: 150.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 39.w,
                height: 39.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: FastaColors.primary2),
                child: Icon(icon)),
            SizedBox(
              height: 18.h,
            ),
            Text(
              name,
              style: FastaTextStyle.hardLabel2,
            )
          ],
        ),
      ),
    );
  }
}
