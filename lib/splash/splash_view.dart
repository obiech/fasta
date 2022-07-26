import 'package:fasta/onboarding/onboarding_view.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const String route = '/Splash';
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacementNamed(context, OnBoardingView.route));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.screenHeight,
      width: 1.screenWidth,
      child: Center(
        child: Image.asset(
          'assets/Logoblack.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
