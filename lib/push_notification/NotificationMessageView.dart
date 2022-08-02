import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationMessageView extends StatelessWidget {
  static const String route = '/NotificationMessageview';
 
const  NotificationMessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final message = (ModalRoute.of(context)?.settings.arguments?? <String>{}) as String;
    return Scaffold(
      appBar: AppBar(bottomOpacity: 0,
          toolbarHeight: 81.h,
          elevation: 0,
          centerTitle: false,
          backgroundColor: FastaColors.primary2,
          leadingWidth: 100.w,
          leading: Row(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 23.w,
              ),
              IconButton(
                  icon: Icon(Icons.arrow_back_rounded,
                      size: 16.w, color: FastaColors.primary),
                  onPressed: ()=> Navigator.pop(context)),
            ],
          ),),
      
      backgroundColor: FastaColors.primary2, 
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w,
                    vertical: 7.w
                ),
            margin: EdgeInsets.symmetric(horizontal: 15.h),
            decoration: BoxDecoration(
                border: Border.all(color: FastaColors.grey9),
                color: FastaColors.grey10,
                borderRadius: BorderRadius.circular(15.h)),
            height: 100.h,
            
            child: Text(message,style: FastaTextStyle.subtitle1,
            ), 
            ),
          ),
        ],
      )
    );
  }
}