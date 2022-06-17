import 'package:fasta/global_widgets/text_fields/custom_text_field.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle(
      {Key? key, required this.controller, required this.title})
      : super(key: key);

  final TextEditingController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListBody(children: [
      Text(title, style: FastaTextStyle.subtitle2),
      SizedBox(
        height: 9.h,
      ),
      CustomTextField(
        controller: controller,
      )
    ]);
  }
}
