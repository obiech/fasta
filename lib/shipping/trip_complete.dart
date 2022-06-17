import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class TripCompleted extends StatefulWidget {
  static const route = '/TripCompleted';
  const TripCompleted({Key? key}) : super(key: key);

  @override
  State<TripCompleted> createState() => _TripCompletedState();
}

class _TripCompletedState extends State<TripCompleted>
    with RoundedLoadingButtonMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FastaColors.primary2,
        appBar: AppBar(
            toolbarHeight: 81.h,
            backgroundColor: FastaColors.primary2,
            title: Text('Trip Complete', style: FastaTextStyle.hardLabel),
            centerTitle: true,
            elevation: 0,
            actions: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 36.h,
                    width: 36.h,
                    margin: EdgeInsets.only(right: 23.w),
                    child: Center(
                      child: Text(
                        'X',
                        style: FastaTextStyle.subtitle1,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: FastaColors.grey5,
                    ),
                  ),
                ),
              ),
            ]),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 23.w),
          child: Column(children: [
            SizedBox(height: 27.h),
            CircleAvatar(
              radius: 50.h,
              backgroundImage: Image.asset('assets/young.png').image,
            ),
            SizedBox(height: 21.h),
            Text(
              'How would you rate your experience',
              style: FastaTextStyle.subtitle1,
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: FastaColors.green,
                  size: 31.h,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.green,
                  size: 31.h,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.green,
                  size: 31.h,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.green,
                  size: 31.h,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.grey9,
                  size: 31.h,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Poor',
                  style: FastaTextStyle.subtitleHard,
                ),
                Text(
                  'Excellent',
                  style: FastaTextStyle.subtitleHard,
                )
              ],
            ),
            SizedBox(
              height: 48.h,
            ),
            Container(
              height: 35.h,
              width: 115.w,
              decoration: BoxDecoration(
                  color: FastaColors.lightBlue,
                  borderRadius: BorderRadius.circular(8.h)),
              child: Center(
                child: Text(
                  'Tip your rider',
                  style: FastaTextStyle.subtitleHard,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 32.h,
                  width: 65.w,
                  child: Center(
                      child: Text('NGN 100.00',
                          style: FastaTextStyle.hardLabel2
                              .copyWith(fontSize: 13.f))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.h),
                      border: Border.all(color: FastaColors.grey7)),
                ),
                Container(
                  height: 32.h,
                  width: 65.w,
                  child: Center(
                      child: Text('NGN 500.00',
                          style: FastaTextStyle.hardLabel2
                              .copyWith(fontSize: 13.f))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.h),
                      border: Border.all(color: FastaColors.grey7)),
                ),
                Container(
                  height: 32.h,
                  width: 65.w,
                  child: Center(
                      child: Text('NGN 1000.00',
                          style: FastaTextStyle.hardLabel2
                              .copyWith(fontSize: 13.f))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.h),
                      border: Border.all(color: FastaColors.grey7)),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
              height: 39.h,
              width: 132.w,
              child: Center(
                child: Text('Tip',
                    style: FastaTextStyle.hardLabel2
                        .copyWith(fontSize: 13.f, color: FastaColors.primary2)),
              ),
              decoration: BoxDecoration(
                  color: FastaColors.primary,
                  borderRadius: BorderRadius.circular(9.h)),
            ),
            SizedBox(
              height: 70.h,
            ),
            TextFormField(
              maxLines: 7,
              decoration: InputDecoration(
                  hintText: '\n\n     Add a comment',
                  hintStyle: FastaTextStyle.subtitleHard
                      .copyWith(color: FastaColors.grey7),
                  filled: true,
                  fillColor: FastaColors.grey5,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h))),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
                controller: btnController,
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst)),
            SizedBox(
              height: 40.h,
            ),
          ]),
        ));
  }
}
