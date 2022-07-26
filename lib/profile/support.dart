import 'package:fasta/Accounts/home.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/profile/widgets/easy_nav_options.dart';
import 'package:fasta/profile/widgets/faq_options.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class SupportView extends StatefulWidget {
  static const String route = '/SupportView';
  const SupportView({Key? key}) : super(key: key);

  @override
  State<SupportView> createState() => _SupportViewState();
}

class _SupportViewState extends State<SupportView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FastaColors.primary2,
      appBar: AppBar(
        backgroundColor: FastaColors.primary2,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: FastaColors.primary,
            )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Help & Support',
              style: FastaTextStyle.headline6,
            ),
            SizedBox(
              height: 39.h,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                      width: 254.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: ColorPalette.grey2,
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.w, right: 15.w),
                          child: TextFormField(
                              decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: "   Search resources",
                          )))),
                ),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                        width: 53.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: FastaColors.primary,
                          borderRadius: BorderRadius.circular(13.0.h),
                        ),
                        child: const Icon(
                          Icons.search,
                          color: FastaColors.primary2,
                        ))),
              ],
            ),
            SizedBox(
              height: 39.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardForEasyNavigation(
                    icon: Icons.rocket_launch_rounded,
                    callback: (){},
                    color: FastaColors.lightOrange,
                    name: 'Get Started'),
                CardForEasyNavigation(
                    icon: Icons.person_pin,
                    callback: (){Navigator.pushNamed(context, Faq.route,
                            );},
                    color: FastaColors.lightOrange,
                    name: 'FAQ')
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                CardForEasyNavigation(
                    icon: Icons.warning,
                    callback: (){},
                    color: FastaColors.lightOrange,
                    name: 'Report\nan Issue'),
                CardForEasyNavigation(
                    icon: Icons.help,
                    callback: (){},
                    color: FastaColors.lightOrange,
                    name: 'Help')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
