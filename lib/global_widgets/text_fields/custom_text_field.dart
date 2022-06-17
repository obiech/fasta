import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends TextFormField {
  CustomTextField({Key? key, required TextEditingController controller})
      : super(
            key: key,
            controller: controller,
            decoration: InputDecoration(
              fillColor: FastaColors.grey5,
              filled: true,
              hintStyle:
                  FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13.h)),
            ));
}
