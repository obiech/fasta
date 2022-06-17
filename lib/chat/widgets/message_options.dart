import 'package:fasta/chat/domain/entity/message.dart';
import 'package:fasta/chat/home.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class MessageOptions extends StatelessWidget {
  final VoidCallback onPressed;
  final List<Message> data;
  const MessageOptions({Key? key, required this.onPressed, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Start your conversation with Joseph',
            style: FastaTextStyle.subtitle2,
          ),
          SizedBox(
            height: 17.h,
          ),
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: [
              GestureDetector(
                onTap: (() {
                  data.add(Message(
                      message: 'Have you arrived',
                      time: '${DateTime.now().hour}'
                          ':'
                          '${DateTime.now().minute}',
                      sendByMe: true));
                  onPressed();
                }),
                child: Container(
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all()),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: Center(
                      child: Text(
                    'Have you arrived?',
                    style: FastaTextStyle.subtitle2
                        .copyWith(fontWeight: FastaFontWeight.semiBold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  data.add(Message(
                      message: 'Please wait a minute',
                      time: '${DateTime.now().hour}'
                          ':'
                          '${DateTime.now().minute}',
                      sendByMe: true));
                  onPressed();
                }),
                child: Container(
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all()),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: Center(
                      child: Text('Please wait a minute',
                          style: FastaTextStyle.subtitle2
                              .copyWith(fontWeight: FastaFontWeight.semiBold))),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  data.add(Message(
                      message: 'Where are you?',
                      time: '${DateTime.now().hour}'
                          ':'
                          '${DateTime.now().minute}',
                      sendByMe: true));
                  onPressed();
                }),
                child: Container(
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all()),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: Center(
                      child: Text('Where are you?',
                          style: FastaTextStyle.subtitle2
                              .copyWith(fontWeight: FastaFontWeight.semiBold))),
                ),
              )
            ],
          ),
          SizedBox(
            height: 70.h,
          )
        ],
      ),
    );
  }
}
