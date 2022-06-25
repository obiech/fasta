import 'dart:developer';

import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/repository/args.dart';
import 'package:fasta/wallet/widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionHistory extends StatefulWidget {
  static const String route = '/TransactionHistory';
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  int _selectedIndex = 0;
  String startDate = '';
  String endDate = '';

  void reload(String date) {
    startDate = date;
    setState(() {});
  }

  void reloadEndDate(String date) {
    endDate = date;
    setState(() {});
  }

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
                  CustomDropDownButton(time: 'From', reload: reload),
                  SizedBox(
                    width: 12.w,
                  ),
                  CustomDropDownButton(time: 'To', reload: reloadEndDate),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<PaystackBloc>().add(
                          PaystackEvent.allTransactions(TransactionArg(
                              endDate: endDate,
                              page: '1',
                              limit: '10',
                              order: 'desc',
                              status: '',
                              type: '',
                              startDate: startDate)));
                      // reload(date)
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 12.h),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                          color: FastaColors.primary,
                          borderRadius: BorderRadius.circular(10.h)),
                      child: Center(
                          child: Text(
                        'Search',
                        style: FastaTextStyle.subtitleHard
                            .copyWith(color: FastaColors.primary2),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(height: 38.h),
              BlocBuilder<PaystackBloc, PaystackState>(
                builder: (context, state) {
                  if (state.allTransaction.isEmpty)
                    {return const Center(child: Text('No Result'));}
                  return Column(
                      children:
                          List.generate(state.allTransaction.length, (index) {
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
                        'Paid NGN ${state.allTransaction[index].amount}',
                        style:
                            FastaTextStyle.hardLabel2.copyWith(fontSize: 12.f),
                      ),
                      timeRecieved: Text(state.allTransaction[index].createdAt,
                          style: FastaTextStyle.subtitle3
                              .copyWith(color: FastaColors.grey8)),
                    );
                  }));
                },
              )
            ])));
  }
}

class CustomDropDownButton extends StatefulWidget {
  final String time;
  final void Function(String date) reload;

  const CustomDropDownButton(
      {Key? key, required this.time, required this.reload})
      : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.time, style: FastaTextStyle.subtitle3),
        GestureDetector(
          onTap: () async {
            String? date = await expiryDateDialog(
                context: context, controller: controller);
            widget.reload(date ?? '');
          },
          child: Container(
            color: FastaColors.grey10,
            width: 102.w,
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
                    controller.text,
                    style: FastaTextStyle.subtitleHard,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

const List<String> _type = ['All', 'Wallet', 'Card'];
Future<String?> expiryDateDialog(
    {required BuildContext context,
    required TextEditingController controller}) async {
  return showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.h)),
        content: StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
              child: SizedBox(
            height: 243.h,
            width: 1.screenWidth,
            child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(DateTime.now().year - 10),
              lastDate: DateTime(DateTime.now().year + 10),
              onDateChanged: (dateTime) {
                var month =
                    dateTime.month <= 9 ? '0${dateTime.month}' : dateTime.month;
                var day = dateTime.day <= 9 ? '0${dateTime.day}' : dateTime.day;
                controller.text = '${dateTime.year}-$month-$day';

                Navigator.pop(context, controller.text);
              },
            ),
          ));
        }),
      );
    },
  );
}
