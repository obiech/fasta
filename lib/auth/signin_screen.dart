// flutter imports
import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/auth/forgot_password_screen.dart';
import 'package:fasta/auth/signup_screen.dart';
// project imports
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/nav/bottom_nav_bar.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreen extends StatefulWidget {
  static const String route = '/SigninScreen';
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>
    with RoundedLoadingButtonMixin {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
                      Text(
                        "Sign In",
                        style: TextStyles.header1,
                      ),
                      SizedBox(
                        height: 60.h,
                      ),

                      /// sign up form
                      Form(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Email"),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                                width: 330.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  color: ColorPalette.grey2,
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: TextFormField(
                                        controller: emailController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("Password"),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                                width: 330.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  color: ColorPalette.grey2,
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: TextFormField(
                                        controller: passwordController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                        ],
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, ForgotPasswordScreen.route);
                        },
                        child: Center(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyles.subtitle02,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignupScreen.route);
                          },
                          child: RichText(
                            text: TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyles.subtitle2,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Sign up',
                                      style: TextStyles.subtitle02),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/google_icon.png',
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            const Center(child: Text('SignIn with Google')),
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
                                horizontal: 30.w, vertical: 15),
                            textStyle: TextStyles.subtitle001),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/facebook_icon.png',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            const Center(child: Text('SignIn with Facebook')),
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
                                horizontal: 30.w, vertical: 15),
                            textStyle: TextStyles.subtitle001),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BlocListener<AuthBloc, AuthState>(
                        listener: (context, state) async {
                          if (state.appState == AppState.waiting) {
                          } else if (state.appState == AppState.loading) {
                            btnController.start();
                          } else if (state.appState == AppState.success) {
                            await buttonsucces();
                            Navigator.pushNamedAndRemoveUntil(
                                context, BottomNavBar.route, (route) => false);
                          } else if (state.appState == AppState.failed) {
                            await buttonerror();
                            Notify.error(context, state.error.errorMessage);
                          }
                        },
                        child: CustomButton(
                            controller: btnController,
                            onPressed: () {
                              context.read<AuthBloc>().add(AuthEvent.login(
                                  email: emailController.text,
                                  password: passwordController.text));
                            }),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ]),
              ),
            )),
      ),
    );
  }
}
