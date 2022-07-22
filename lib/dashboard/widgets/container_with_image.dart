import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class DashboardOverview extends StatelessWidget {
  final String item, backgroundImage, description, image;
  final Color color;
  const DashboardOverview(
      {Key? key,
      required this.image,
      required this.backgroundImage,
      required this.color,
      required this.description,
      required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: 154.w,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(
            backgroundImage,
          ).image),
          color: color,
          borderRadius: BorderRadius.circular(18.h)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
            ),
            Text(
              item,
              style: FastaTextStyle.hardLabel.copyWith(fontSize: 16.f),
            ),
            Text(
              description,
              style: FastaTextStyle.softSubtitle,
            )
          ]),
    );
  }
}
