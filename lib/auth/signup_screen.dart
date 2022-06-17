// flutter imports
import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/auth/signin_screen.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:flutter/material.dart';

// project imports
import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatefulWidget {
  static const route = '/SignupScreen';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
    with RoundedLoadingButtonMixin {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController stateController = TextEditingController();

  final TextEditingController cityController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController countryCodeController = TextEditingController();

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
                physics: const BouncingScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign Up",
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
                          const Text('First Name'),
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
                                        controller: firstNameController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("Last Name"),
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
                                        controller: lastNameController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
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
                                    padding: EdgeInsets.only(
                                      left: 15.w,
                                      right: 15.w,
                                    ),
                                    child: TextFormField(
                                        controller: passwordController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("State"),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                                width: 330.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  color: ColorPalette.grey2,
                                  borderRadius: BorderRadius.circular(13.0.h),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.w, right: 15.w),
                                    child: TextFormField(
                                        controller: stateController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("City"),
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
                                        controller: cityController,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("Phone Number"),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                    width: 70.w,
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                      color: ColorPalette.grey2,
                                      borderRadius: BorderRadius.circular(13.0),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w, right: 15.w),
                                        child: TextFormField(
                                            controller: countryCodeController
                                              ..text = '+234',
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                            )))),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                    width: 230.w,
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                      color: ColorPalette.grey2,
                                      borderRadius:
                                          BorderRadius.circular(13.0.h),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, right: 15.h),
                                        child: TextFormField(
                                            controller: phoneNumberController,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                            )))),
                              ),
                            ],
                          ),
                        ],
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyles.subtitle2,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Login',
                                    style: TextStyles.subtitle02),
                              ]),
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
                            const Center(child: Text('SignUp with Google')),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(330, 55).s(),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(13), // <-- Radius
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
                          // Navigator.pushNamedAndRemoveUntil(
                          //     context, BottomNavBar.route, (route) => false);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/facebook_icon.png',
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            const Center(child: Text('SignUp with Facebook')),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(330, 55).s(),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(13.h), // <-- Radius
                            ),
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 15.h),
                            textStyle: TextStyles.subtitle001),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      BlocListener<AuthBloc, AuthState>(
                        listener: (context, state) async {
                          if (state.appState == AppState.waiting) {
                          } else if (state.appState == AppState.loading) {
                            btnController.start();
                          } else if (state.appState == AppState.success) {
                            await buttonsucces();
                            Navigator.pushNamedAndRemoveUntil(
                                context, SigninScreen.route, (route) => false);
                          } else if (state.appState == AppState.failed) {
                            await buttonerror();
                            Notify.error(context, state.error.errorMessage);
                          }
                        },
                        child: CustomButton(
                            controller: btnController,
                            onPressed: () {
                              if (firstNameController.text.isEmpty ||
                                  lastNameController.text.isEmpty ||
                                  emailController.text.isEmpty ||
                                  passwordController.text.isEmpty ||
                                  stateController.text.isEmpty ||
                                  cityController.text.isEmpty ||
                                  countryCodeController.text.isEmpty ||
                                  phoneNumberController.text.isEmpty) {
                                Notify.error(context, 'Missing required Field');
                              } else if (!emailController.text.contains('@')) {
                                Notify.error(context, 'Invalid Email format');
                              } else {
                                context.read<AuthBloc>().add(AuthEvent.register(
                                    fullName: firstNameController.text +
                                        ' ' +
                                        lastNameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    state: stateController.text,
                                    city: cityController.text,
                                    phoneNumber: countryCodeController.text +
                                        phoneNumberController.text));
                              }
                            }),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                    ]),
              ),
            )),
      ),
    );
  }
}
