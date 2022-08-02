import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_with_Avater.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

enum AppBarType { profile, backButton, empty }

class CustomScaffold extends Scaffold {
  final VoidCallback? onPressed;
  final VoidCallback? iconPressed;
  final AppBarType type;
  final AppBar? customAppBar;

  CustomScaffold(
      {Key? key,
      this.onPressed,
      this.iconPressed,
      this.customAppBar,
      required this.type,
      required Widget child})
      : assert(
            (type == AppBarType.backButton || type == AppBarType.profile)
                ? (onPressed != null)
                : true,
            "if [type] is not [AppBarType.empty], then onPressed can't be null"),
        super(
            key: key,
            backgroundColor: FastaColors.primary2,
            extendBody: true,
            appBar: (type == AppBarType.backButton)
                ? AppBarWithBackButton(onPressed: onPressed!,iconPressed: iconPressed!,)
                : (type == AppBarType.profile)
                    ? AppBarWithAvater(onPressed: onPressed!, IconPressed: iconPressed!,)
                    : customAppBar,
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: child));
}
