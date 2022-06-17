import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class DashboardOverviewRider extends StatelessWidget {
  final String image, description;
  const DashboardOverviewRider(
      {Key? key, required this.description, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.h)),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: FastaColors.grey3,
          borderRadius: BorderRadius.circular(18.h),
          border: Border.all(color: FastaColors.primary2, width: 3),
        ),
        height: 137.h,
        width: 158.w,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                description,
                style: FastaTextStyle.hardLabel.copyWith(fontSize: 16.f),
              ),
            ]),
      ),
    );
  }
}
