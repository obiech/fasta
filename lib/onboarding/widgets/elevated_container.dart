import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final String image, type, description;
  final bool isSelected;

  const ElevatedContainer(
      {Key? key,
      required this.image,
      required this.type,
      required this.description,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.h,
      width: 328.w,
      decoration: BoxDecoration(
          border: Border.all(
              color: (isSelected) ? FastaColors.primary : FastaColors.primary2,
              width: 3.f),
          boxShadow: [
            BoxShadow(
              color: FastaColors.grey3,
              offset: const Offset(0, 6).s(),
            )
          ],
          color: FastaColors.grey3,
          borderRadius: BorderRadius.circular(18.h)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Image.asset(image, fit: BoxFit.cover)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\n' + type,
                style: FastaTextStyle.label
                    .copyWith(fontWeight: FastaFontWeight.semiBold),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                description,
                style: FastaTextStyle.subtitle2.copyWith(fontSize: 14.f),
              )
            ],
          ),
          if (isSelected)
            Padding(
              padding: EdgeInsets.only(top: 14.h),
              child: Container(
                height: 21.h,
                width: 21.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: FastaColors.primary),
                child: const Icon(
                  Icons.done,
                  color: FastaColors.primary2,
                ),
              ),
            )
          else
            const Offstage()
        ],
      ),
    );
  }
}
