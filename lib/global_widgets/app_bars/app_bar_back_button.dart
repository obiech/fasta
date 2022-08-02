import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

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
            IconButton(
              icon :const Icon(Icons.notifications),
              color: FastaColors.primary,
              onPressed: iconPressed, 
            ),
            SizedBox(
              width: 23.w,
            )
          ],
        );
}
