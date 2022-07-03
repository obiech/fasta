// flutter imports
import 'package:fasta/auth/signin_screen.dart';
import 'package:fasta/auth/signup_screen.dart';
// project imports
import 'package:fasta/colors/colors.dart';
import 'package:fasta/rider_app/auth/view/sign_in_screen.dart';
import 'package:fasta/rider_app/auth/view/sign_up_personal_info.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class FastaStartedScreen extends StatefulWidget {
  static const String route = '/FastaStartedScreen';
  const FastaStartedScreen({Key? key}) : super(key: key);

  @override
  State<FastaStartedScreen> createState() => _FastaStartedScreenState();
}

class _FastaStartedScreenState extends State<FastaStartedScreen> {
  late int arg;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arg = ModalRoute.of(context)?.settings.arguments as int;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette.white,
        body: SizedBox(
            height: 1.screenHeight,
            width: 1.screenWidth,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 50, 24, 0),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/splash_black.png',
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      Text(
                        "Let's Get You",
                        style: TextStyles.header1,
                      ),
                      Text(
                        "Started",
                        style: TextStyles.header01,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                            text:
                                'Now its time to create your account and start doing things',
                            style: TextStyles.subtitle1,
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' FASTA', style: TextStyles.subtitle01),
                            ]),
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (arg == 0) {
                            Navigator.pushNamed(context, SigninScreen.route);
                          } else if (arg == 1) {
                             
                            Navigator.pushNamed(context, SigninScreenRider.route);

                          }
                        },
                        child: Row(
                          children: [
                            const Text('Already have an account?'),
                            const Spacer(),
                            Image.asset(
                              'assets/forward_icon.png',
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(330, 55).s(),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12.h), // <-- Radius
                            ),
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 15.h),
                            textStyle: TextStyles.subtitle001),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (arg == 0) {
                            Navigator.pushNamed(context, SignupScreen.route);
                          } else if (arg == 1) {
                            Navigator.pushNamed(context, SignUpRiderView.route);
                          }
                        },
                        child: Row(
                          children: [
                            const Text('I am new to FASTA'),
                            const Spacer(),
                            Image.asset(
                              'assets/forward_icon.png',
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(330, 55).s(),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 15.h),
                            textStyle: TextStyles.subtitle001),
                      )
                    ]),
              ),
            )),
      ),
    );
  }
}
