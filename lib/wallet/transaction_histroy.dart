import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/widgets/notification.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  static const String route = '/TransactionHistory';
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithBackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: FastaColors.primary2,
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            physics: const BouncingScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Transaction History',
                style: FastaTextStyle.headline6,
              ),
              SizedBox(height: 28.h),
              Row(
                  children: List.generate(3, (index) {
                return GestureDetector(
                  onTap: () {
                    _selectedIndex = index;
                    setState(() {});
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 24.w),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.h),
                          border: Border.all(),
                          color: (_selectedIndex == index)
                              ? FastaColors.primary
                              : FastaColors.primary2),
                      child: Center(
                          child: Text(
                        _type[index],
                        style: FastaTextStyle.hardLabel2.copyWith(
                            color: (_selectedIndex == index)
                                ? FastaColors.primary2
                                : FastaColors.primary),
                      ))),
                );
              })),
              SizedBox(height: 28.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomDropDownButton(time: 'From'),
                  SizedBox(
                    width: 12.w,
                  ),
                  const CustomDropDownButton(time: 'To'),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                        color: FastaColors.primary,
                        borderRadius: BorderRadius.circular(10.h)),
                    child: Center(
                        child: Text(
                      'Search',
                      style: FastaTextStyle.subtitleHard
                          .copyWith(color: FastaColors.primary2),
                    )),
                  )
                ],
              ),
              SizedBox(height: 38.h),
              Column(
                children: List.generate(3, (index) {
                  return NotificationMessage(
                    radius: 15.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    icon: Container(
                      height: 25.h,
                      width: 27.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.h),
                        color: FastaColors.lightBlue,
                      ),
                      child: Center(
                          child: Image.asset(
                        'assets/2.0x/credit-card.png',
                        height: 16.h,
                        width: 16.h,
                      )),
                    ),
                    content: Text(
                      'Paid NGN 5,000',
                      style: FastaTextStyle.hardLabel2.copyWith(fontSize: 12.f),
                    ),
                    timeRecieved: Text('Yesterday 5:15pm',
                        style: FastaTextStyle.subtitle3
                            .copyWith(color: FastaColors.grey8)),
                  );
                }),
              )
            ])));
  }
}

class CustomDropDownButton extends StatelessWidget {
  final String time;

  const CustomDropDownButton({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(time, style: FastaTextStyle.subtitle3),
        Container(
          color: FastaColors.grey10,
          width: 102.w,
          child: DropdownButton<String>(
              value: '01 Jan 2022',
              elevation: 0,
              focusColor: FastaColors.grey10,
              dropdownColor: FastaColors.grey10,
              items: [
                DropdownMenuItem(
                  child: SizedBox(
                    width: 80.w,
                    height: 32.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 10.h,
                        ),
                        Text(
                          '01 Jan 222',
                          style: FastaTextStyle.subtitleHard,
                        ),
                      ],
                    ),
                  ),
                  value: '01 Jan 2022',
                )
              ],
              onChanged: (value) {}),
        )
      ],
    );
  }
}

const List<String> _type = ['All', 'Wallet', 'Card'];
