import 'package:fasta/colors/colors.dart';
import 'package:fasta/push_notification/Bloc/NotificationBloc.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarWithAvater extends AppBar {
  AppBarWithAvater(
      {Key? key,
      String? image,
      required VoidCallback onPressed,
      required VoidCallback IconPressed})
      : super(
          key: key,
          bottomOpacity: 0,
          toolbarHeight: 81.h,
          elevation: 0,
          backgroundColor: FastaColors.primary2,
          leading: Builder(builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 23.w,
                ),
                GestureDetector(
                  onTap: onPressed,
                  child: Container(
                    height: 43.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: FastaColors.ligthOrange2,
                    ),
                    child: Image.asset(
                      image ?? 'assets/2.png',
                    ),
                  ),
                ),
              ],
            );
          }),
          leadingWidth: 100.w,
          actions: [
            Builder(builder: (context) {
              return BlocBuilder<NotificationBloc, NotificationState>(
                builder: (context, state) {
                  final unreadCount = state.unreadCount.toString();
                  return Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          color: FastaColors.primary,
                          onPressed: IconPressed,
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
              );
            }),
            SizedBox(
              width: 23.w,
            )
          ],
        );
}
