import 'package:bubble/bubble.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    required this.message,
    required this.sendByMe,
    this.icon,
    required this.time,
  }) : super(key: key);
  final String message, time;
  final bool sendByMe;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin: BubbleEdges.only(
        bottom: 10.h,
        left: sendByMe ? 0.45.screenWidth : 5.w,
        right: sendByMe ? 5.w : 0.45.screenWidth,
      ),
      stick: true,
      radius: Radius.circular(10.h),
      nip: sendByMe ? BubbleNip.rightTop : BubbleNip.leftTop,
      color: FastaColors.primary,
      nipWidth: 5,
      nipHeight: 20.h,
      alignment: sendByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment:
            sendByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!sendByMe)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                time,
                style:
                    FastaTextStyle.subtitle2.copyWith(color: FastaColors.white),
                textAlign: sendByMe ? TextAlign.end : TextAlign.start,
              ),
            ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 15.h,
              ),
              child: Text(
                message,
                style:
                    FastaTextStyle.subtitle2.copyWith(color: FastaColors.white),
                textAlign: (sendByMe) ? TextAlign.end : TextAlign.start,
              ),
            ),
          ),
          if (sendByMe)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                time,
                style:
                    FastaTextStyle.subtitle2.copyWith(color: FastaColors.white),
                textAlign: sendByMe ? TextAlign.end : TextAlign.start,
              ),
            ),
        ],
      ),
    );
  }
}
