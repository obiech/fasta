import 'package:fasta/colors/colors.dart';
import 'package:fasta/onboarding/fasta_type.dart';
import 'package:fasta/onboarding/widgets/first.dart';
import 'package:fasta/onboarding/widgets/second.dart';
import 'package:fasta/onboarding/widgets/skip.dart';
import 'package:fasta/onboarding/widgets/third.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

enum _CurrentPage { first, second, third }

class OnBoardingView extends StatefulWidget {
  static const String route = '/onBoardingView';
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  _CurrentPage _page = _CurrentPage.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        if (_page == _CurrentPage.first)
          GestureDetector(
              onTap: () {
                setState(() {
                  _page = _CurrentPage.second;
                });
              },
              child: const FirstOnboardingWidget()),
        if (_page == _CurrentPage.second)
          GestureDetector(
              onTap: () {
                setState(() {
                  _page = _CurrentPage.third;
                });
              },
              child: const SecondOnboardingWidget()),
        if (_page == _CurrentPage.third)
          GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, FastaTypeSelection.route, (route) => false);
              },
              child: const ThirdOnboardingWidget()),
        _OnboardingIndicator(_page),
        _SkipPositioned(page: _page)
      ],
    ));
  }
}

class _SkipPositioned extends StatelessWidget {
  final _CurrentPage page;
  const _SkipPositioned({Key? key, this.page = _CurrentPage.first})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (page == _CurrentPage.first) {
      return Positioned(
          bottom: 85.h, right: 23.w, child: const Skip(SkipTheme.light));
    } else if (page == _CurrentPage.second) {
      return Positioned(
          bottom: 461.h, right: 23.w, child: const Skip(SkipTheme.light));
    } else {
      return Positioned(
          bottom: 510.h, right: 23.w, child: const Skip(SkipTheme.dark));
    }
  }
}

class _OnboardingIndicator extends StatelessWidget {
  final _CurrentPage _page;
  const _OnboardingIndicator(this._page, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 23.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 3.h,
            width: 98.w,
            decoration: BoxDecoration(
                color: (_page == _CurrentPage.first)
                    ? FastaColors.primary2
                    : (_page == _CurrentPage.third)
                        ? FastaColors.grey1
                        : FastaColors.grey2,
                borderRadius: BorderRadius.circular(100.h)),
          ),
          Container(
            height: 3.h,
            width: 98.w,
            decoration: BoxDecoration(
                color: (_page == _CurrentPage.second)
                    ? FastaColors.primary2
                    : (_page == _CurrentPage.third)
                        ? FastaColors.grey1
                        : FastaColors.grey2,
                borderRadius: BorderRadius.circular(100.h)),
          ),
          Container(
            height: 3.h,
            width: 98.w,
            decoration: BoxDecoration(
                color: (_page == _CurrentPage.third)
                    ? FastaColors.primary
                    : FastaColors.grey2,
                borderRadius: BorderRadius.circular(100.h)),
          ),
        ],
      ),
    );
  }
}
