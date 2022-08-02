import 'package:fasta/card/add_card.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScrenState();
}

class _CardScrenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      type: AppBarType.profile,
      iconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
      onPressed: () {
        Navigator.pushNamed(context, ProfileView.route);
      },
      child: Column(
        children: [
          SizedBox(
            height: 37.h,
          ),
          Container(
            decoration: BoxDecoration(
                color: FastaColors.lightOrange,
                borderRadius: BorderRadius.circular(20.h)),
            height: 124.h,
            width: 328.w,
            child: const Center(
              child: Text('You Have Not added any card'),
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AddCardView.route);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: FastaColors.primary,
                  borderRadius: BorderRadius.circular(13.h)),
              height: 55.h,
              child: Center(
                child: Text(
                  'Add Card   +',
                  style: FastaTextStyle.hardLabel
                      .copyWith(color: FastaColors.primary2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
