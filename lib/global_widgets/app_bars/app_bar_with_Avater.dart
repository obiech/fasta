import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

class AppBarWithAvater extends AppBar {
  AppBarWithAvater({Key? key, String? image, required VoidCallback onPressed})
      : super(
          key: key,
          bottomOpacity: 0,
          toolbarHeight: 81.h,
          elevation: 0,
          backgroundColor: FastaColors.primary2,
          leading: Row(
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
          ),
          leadingWidth: 100.w,
          actions: [
            Icon(
              Icons.notifications,
              size: 28.h,
              color: FastaColors.primary,
            ),
            SizedBox(
              width: 23.w,
            )
          ],
        );
}
