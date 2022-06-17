
import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/text_fields/custom_text_field.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class TextFieldWithSuffixIcon extends StatelessWidget {
  const TextFieldWithSuffixIcon(
      {Key? key, required this.controller, this.onPressed})
      : super(key: key);

  final TextEditingController controller;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: FastaColors.grey5,
          filled: true,
          suffixIcon: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: FastaColors.primary,
              )),
          hintStyle:
              FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(13.h)),
        ));
  }
}
