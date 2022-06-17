import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:flutter/material.dart';

/// Defines text styles for the puzzle UI.
class FastaTextStyle {
  /// Headline 1 text style
  static TextStyle get headline1 {
    return _baseTextStyle.copyWith(
      fontSize: 29.3.f,
      fontWeight: FastaFontWeight.semiBold,
    );
  }

  /// Headline 2 text style
  static TextStyle get headline2 {
    return _baseTextStyle.copyWith(
      fontSize: 54.f,
      height: 1.1,
      fontWeight: FastaFontWeight.semiBold,
    );
  }

  /// Headline 3 text style
  static TextStyle get headline3 {
    return _baseTextStyle.copyWith(
      fontSize: 34.f,
      height: 1.12,
      fontWeight: FastaFontWeight.semiBold,
    );
  }

  /// Headline 3 Soft text style
  static TextStyle get headline3Soft {
    return _baseTextStyle.copyWith(
      fontSize: 34.f,
      height: 1.17,
      fontWeight: FastaFontWeight.regular,
    );
  }

  /// Headline 4 text style
  static TextStyle get headline4 {
    return _baseTextStyle.copyWith(
      fontSize: 24.f,
      height: 1.15,
      fontWeight: FastaFontWeight.bold,
    );
  }

  /// Headline 5 text style
  static TextStyle get headline5 {
    return _baseTextStyle.copyWith(
      fontSize: 16.f,
      height: 1.25,
      fontWeight: FastaFontWeight.bold,
    );
  }

  /// Headline 5 text style
  static TextStyle get headline6 {
    return _baseTextStyle.copyWith(
      fontSize: 22.f,
      height: 1.25,
      fontWeight: FastaFontWeight.semiBold,
    );
  }

  /// Body Large Bold text style
  static TextStyle get bodyLargeBold {
    return _baseTextStyle.copyWith(
      fontSize: 46.f,
      height: 1.17,
      fontWeight: FastaFontWeight.bold,
    );
  }

  /// Body Large text style
  static TextStyle get bodyLarge {
    return _baseTextStyle.copyWith(
      fontSize: 46.f,
      height: 1.17,
      fontWeight: FastaFontWeight.regular,
    );
  }

  /// Label text style
  static TextStyle get hardLabel {
    return _baseTextStyle.copyWith(
      fontSize: 19.f,
      height: 1.27,
      fontWeight: FastaFontWeight.semiBold,
    );
  }

  /// Label text style
  static TextStyle get hardLabel2 {
    return _baseTextStyle.copyWith(
      fontSize: 15.f,
      height: 1.27,
      fontWeight: FastaFontWeight.semiBold,
    );
  }

  /// Label text style
  static TextStyle get label {
    return _baseTextStyle.copyWith(
      fontSize: 19.f,
      height: 1.27,
      fontWeight: FastaFontWeight.regular,
    );
  }

  /// subtitle 1 text style
  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16.f,
      height: 1.27,
      fontWeight: FastaFontWeight.regular,
    );
  }

  /// subtitle 2 text style
  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 14.f,
      height: 1.27,
      fontWeight: FastaFontWeight.regular,
    );
  }

  /// subtitle 2 text style
  static TextStyle get subtitle3 {
    return _baseTextStyle.copyWith(
      fontSize: 11.f,
      height: 1.27,
      fontWeight: FastaFontWeight.regular,
    );
  }

  /// subtitle hard text style
  static TextStyle get subtitleHard {
    return _baseTextStyle.copyWith(
      fontSize: 11.f,
      height: 1.27,
      fontWeight: FastaFontWeight.semiBold,
    );
  }

  /// subtitle 2 text style
  static TextStyle get softSubtitle {
    return _baseTextStyle.copyWith(
      fontSize: 13.f,
      height: 1.27,
      color: FastaColors.grey4,
      fontWeight: FastaFontWeight.regular,
    );
  }

  static const _baseTextStyle = TextStyle(
    fontFamily: 'Open Sans',
    color: FastaColors.primary,
    fontWeight: FastaFontWeight.regular,
  );
}

class TextStyles {
  static TextStyle header1 = TextStyle(
    fontSize: 30.f,
    // height: 1.25,
    color: ColorPalette.black,
    fontWeight: FontWeight.w600,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header01 = TextStyle(
    fontSize: 30.f,
    // height: 1.25,
    color: ColorPalette.likeYellow,
    fontWeight: FontWeight.w600,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header2 = TextStyle(
    fontSize: 24.f,
    // height: 1.25,
    color: ColorPalette.orange,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header002 = TextStyle(
    fontSize: 24.f,
    // height: 1.25,
    color: ColorPalette.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header02 = TextStyle(
    fontSize: 24.f,
    // height: 1.25,
    color: ColorPalette.orange,
    fontWeight: FontWeight.w700,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header3 = TextStyle(
    fontSize: 20.f,
    // height: 1.25,
    color: ColorPalette.black,
    fontWeight: FontWeight.w700,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header03 = TextStyle(
    fontSize: 20.f,
    // height: 1.25,
    color: ColorPalette.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header4 = TextStyle(
    fontSize: 18.f,
    // height: 1.25,
    color: ColorPalette.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle header5 = TextStyle(
    fontSize: 36.f,
    // height: 1.25,
    color: ColorPalette.black,
    fontWeight: FontWeight.w700,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle1 = TextStyle(
    fontSize: 16.f,
    // height: 2.14,
    color: ColorPalette.grey,
    fontWeight: FontWeight.w400,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle01 = TextStyle(
    fontSize: 16.f,
    // height: 2.14,
    color: ColorPalette.grey,
    fontWeight: FontWeight.bold,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle001 = TextStyle(
    fontSize: 16.f,
    // height: 2.14,
    color: ColorPalette.white,
    fontWeight: FontWeight.w600,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle2 = TextStyle(
    fontSize: 14.3.f,
    // height: 2.14,
    color: ColorPalette.grey,
    fontWeight: FontWeight.w400,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle02 = TextStyle(
    fontSize: 14.3.f,
    // height: 2.14,
    color: ColorPalette.grey,
    fontWeight: FontWeight.bold,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle22 = TextStyle(
    fontSize: 13.f,
    // height: 2.14,
    color: ColorPalette.grey1,
    fontWeight: FontWeight.w400,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle3 = TextStyle(
    fontSize: 16.f,
    // height: 2.14,
    color: ColorPalette.grey1,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );
  static TextStyle subtitle03 = TextStyle(
    fontSize: 16.f,
    // height: 2.14,
    color: ColorPalette.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle4 = TextStyle(
    fontSize: 14.f,
    // height: 2.14,
    color: ColorPalette.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle04 = TextStyle(
    fontSize: 14.f,
    // height: 2.14,
    // color: ColorPalette.azure,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle40 = TextStyle(
    fontSize: 13.f,
    // height: 2.14,
    color: ColorPalette.blue1,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle004 = TextStyle(
    fontSize: 13.f,
    // height: 2.14,
    color: ColorPalette.grey3,
    fontWeight: FontWeight.w500,
    fontFamily: 'DMSans-Regular.tff',
  );

  static TextStyle subtitle5 = TextStyle(
    fontSize: 15.f,
    // height: 2.14,
    color: ColorPalette.white,
    fontWeight: FontWeight.w700,
    fontFamily: 'DMSans-Regular.tff',
  );
}
