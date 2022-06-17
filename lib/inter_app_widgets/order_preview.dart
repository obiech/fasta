import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class OrderPreview extends StatelessWidget {
  final String name, to, from, distance;
  const OrderPreview({
    required this.name,
    required this.to,
    required this.from,
    required this.distance,
    Key? key,
  }) : super(key: key);

  Color getColor(String name) {
    if (name.trim().toUpperCase() == 'Ongoing'.toUpperCase()) {
      return FastaColors.orange;
    } else if (name.trim().toUpperCase() == 'Completed'.toUpperCase()) {
      return FastaColors.primary;
    } else if (name.trim().toUpperCase() == 'Declined'.toUpperCase()) {
      return FastaColors.alert;
    }
    return FastaColors.primary;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 173.h,
        width: 328.w,
        margin: EdgeInsets.only(bottom: 24.h),
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 19.w),
        decoration: BoxDecoration(
            color: FastaColors.grey10,
            borderRadius: BorderRadius.circular(20.h),
            border: Border.all(color: FastaColors.grey9)),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/Ellipse.png'),
                Image.asset(
                  'assets/Vector 21 (1).png',
                  height: 55.h,
                ),
                const Icon(Icons.place, color: FastaColors.orange)
              ],
            ),
            SizedBox(
              width: 12.w,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              RichText(
                  text: TextSpan(
                      text: 'From\n',
                      style: FastaTextStyle.subtitle3.copyWith(fontSize: 10.f),
                      children: [
                    TextSpan(
                      text: from,
                      style:
                          FastaTextStyle.subtitleHard.copyWith(fontSize: 12.f),
                    ),
                  ])),
              SizedBox(
                height: 14.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.directions_bike_rounded,
                    size: 13.h,
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Text(
                    distance,
                    style: FastaTextStyle.subtitle3.copyWith(fontSize: 10.f),
                  )
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              RichText(
                  text: TextSpan(
                      text: 'To\n',
                      style: FastaTextStyle.subtitle3.copyWith(fontSize: 10.f),
                      children: [
                    TextSpan(
                      text: to,
                      style:
                          FastaTextStyle.subtitleHard.copyWith(fontSize: 12.f),
                    )
                  ])),
            ]),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  // width: 75.w,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                      color: getColor(name),
                      borderRadius: BorderRadius.circular(7.h)),
                  height: 27.h,
                  child: Center(
                      child: Text(name,
                          style: FastaTextStyle.subtitleHard
                              .copyWith(color: FastaColors.primary2)))),
            )
          ],
        ));
  }
}
