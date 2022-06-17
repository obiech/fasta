import 'package:fasta/colors/colors.dart';
import 'package:fasta/onboarding/fasta_type.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

enum SkipTheme { dark, light }

class Skip extends StatelessWidget {
  final SkipTheme skipTheme;
  const Skip(
    this.skipTheme, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, FastaTypeSelection.route, (route) => false);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.5.h),
          color: (skipTheme == SkipTheme.dark)
              ? FastaColors.primary
              : FastaColors.primary2,
        ),
        height: 39.h,
        width: 118.w,
        child: Center(
          child: Text(
            'Skip Intro',
            style: FastaTextStyle.label.copyWith(
                color: (skipTheme == SkipTheme.light)
                    ? FastaColors.primary
                    : FastaColors.primary2),
          ),
        ),
      ),
    );
  }
}
