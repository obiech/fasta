import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class TrackerWidget extends StatelessWidget {
  const TrackerWidget({
    Key? key,
    required this.from,
    required this.distance,
    required this.to,
  }) : super(key: key);

  final String from;
  final String distance;
  final String to;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
    ]);
  }
}
class TrackerIcon extends StatelessWidget {
  const TrackerIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/Ellipse.png'),
        Image.asset(
          'assets/Vector 21 (1).png',
          height: 55.h,
        ),
        const Icon(Icons.place, color: FastaColors.orange)
      ],
    );
  }
}
