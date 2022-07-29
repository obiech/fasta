import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final String time;
  final void Function(String date) reload;
  final TextEditingController controller;

  const CustomDropDownButton(
      {Key? key,
      required this.time,
      required this.reload,
      required this.controller})
      : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  // final TextEditingController controller =

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
                context: context, controller: widget.controller);
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
                    widget.controller.text,
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