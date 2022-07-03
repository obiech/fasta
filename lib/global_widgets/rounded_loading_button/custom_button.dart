import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:rounded_loading_button/rounded_loading_button.dart';

class CustomButton extends RoundedLoadingButton {
  CustomButton({
    Key? key,
    required RoundedLoadingButtonController controller,
    required VoidCallback? onPressed,
  }) : super(
          key: key,
          controller: controller,
          onPressed: onPressed,
          color: FastaColors.primary,
          width: 1.screenWidth,
          height: 55.h,
          borderRadius: 12.h,
          disabledColor: Colors.grey,
          animateOnTap: false,
          successColor: FastaColors.primary,
          child: Text(
            'Continue',
            style:
                FastaTextStyle.hardLabel.copyWith(color: FastaColors.primary2),
          ),
        );
  CustomButton.named({
    Key? key,
    required RoundedLoadingButtonController controller,
    required String name,
    required VoidCallback? onPressed,
    double? width,
  }) : super(
          key: key,
          controller: controller,
          onPressed: onPressed,
          color: FastaColors.primary,
          width:width?? 1.screenWidth,
          height: 55.h,
          borderRadius: 12.h,
          disabledColor: Colors.grey,
          animateOnTap: false,
          successColor: FastaColors.primary,
          child: Text(
            name,
            style:
                FastaTextStyle.hardLabel.copyWith(color: FastaColors.primary2),
          ),
        );
}
