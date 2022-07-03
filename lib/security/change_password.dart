import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/global_widgets/text_fields/with_title.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  static const String route = '/ChangePassword';
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword>
    with RoundedLoadingButtonMixin {
  final TextEditingController presentPin = TextEditingController();
  final TextEditingController newPin = TextEditingController();
  final TextEditingController confirmNewPin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      type: AppBarType.backButton,
      onPressed: () {
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Text(
            'Change Pin',
            style: FastaTextStyle.headline6,
          ),
          SizedBox(
            height: 22.h,
          ),
          TextFieldWithTitle(
            title: 'Present Pin',
            controller: presentPin,
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            title: 'New Pin',
            controller: newPin,
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            title: 'Confirm New Pin',
            controller: confirmNewPin,
          ),
          SizedBox(
            height: 43.h,
          ),
          CustomButton.named(
            controller: btnController,
            onPressed: () {},
            name: 'Save',
          ),
          SizedBox(
            height: 63.h,
          ),
        ],
      ),
    );
  }
}
