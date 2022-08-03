import 'package:fasta/colors/colors.dart';
import 'package:fasta/push_notification/Bloc/NotificationBloc.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarWithBackButton extends AppBar {
  AppBarWithBackButton({Key? key, required VoidCallback onPressed,required VoidCallback iconPressed})
      : super(
          key: key,
          bottomOpacity: 0,
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
                  onPressed: onPressed),
            ],
          ),
          actions: [
            BlocBuilder<NotificationBloc, NotificationState>(
                builder: (context, state) {
                  final unreadCount = state.unreadCount.toString();
                  return Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          color: FastaColors.primary,
                          onPressed: iconPressed,
                        ),
                        Positioned(
                          right:unreadCount.length==1?11:unreadCount.length==2?5:0,
                          top: 5,
                          child: Text( 
                            unreadCount,
                            style: FastaTextStyle.label.copyWith(
                                color: FastaColors.alert,
                                fontWeight: FastaFontWeight.extraBold,
                                fontSize: 15),
                          ),
                        )
                      ]);
                },
              ),
            SizedBox(
              width: 23.w,
            )
          ],
        );
}
