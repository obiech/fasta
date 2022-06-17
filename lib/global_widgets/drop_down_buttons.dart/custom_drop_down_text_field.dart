import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class CustomDropDownTextField<T> extends DropdownButtonFormField<T> {
  CustomDropDownTextField(
      {Key? key,
      required List<DropdownMenuItem<T>>? items,
      required ValueChanged? onChanged})
      : super(
            key: key,
            decoration: InputDecoration(
              fillColor: FastaColors.grey5,
              filled: true,
              hintStyle:
                  FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13.h)),
            ),
            isDense: true,
            focusColor: FastaColors.grey8,
            isExpanded: true,
            items: items,
            onChanged: onChanged);
}
