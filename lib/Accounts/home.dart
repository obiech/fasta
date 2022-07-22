import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

import '../profile/widgets/faq_options.dart';
import '../typography/text_styles.dart';


class account_home extends StatefulWidget {
  static const String route = '/account_home';
  const account_home({Key? key}) : super(key: key);

  @override
  State<account_home> createState() => _account_homeState();
}

class _account_homeState extends State<account_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(
              height: 64.h,
            ),
            Text(
              'FAQ',
              style: FastaTextStyle.headline6,
            ),
            SizedBox(
              height: 13.h,
            ),
            const FAQOptions(),
            SizedBox(
              height: 11.h,
            ),
            const FAQOptions(),
            SizedBox(
              height: 11.h,
            ),
            const FAQOptions(),
            SizedBox(
              height: 11.h,
            ),
            const FAQOptions(),
            SizedBox(
              height: 11.h,
            ),
            const FAQOptions(),
            SizedBox(
              height: 70.h,
            )
        ],
      )),
    );
  }
}