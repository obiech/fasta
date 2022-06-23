// flutter imports
import 'package:fasta/auth/signin_screen.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:flutter/material.dart';

// project imports
import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String route = '/ForgotPasswordScreen';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>
    with RoundedLoadingButtonMixin {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: FastaColors.primary2,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: FastaColors.primary,
                ))),
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
                        "Forgot Password",
                        style: TextStyles.header1,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "A recovery link will be sent to your email  ",
                        style: TextStyles.subtitle1,
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
                                  borderRadius: BorderRadius.circular(13.0.h),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.w, right: 15.w),
                                    child: TextFormField(
                                        controller: controller,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )))),
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          CustomButton(
                              controller: btnController,
                              onPressed: () async {
                                if (controller.text.isEmpty) {
                                  Notify.error(
                                      context, 'Missing Required Field');
                                } else if (controller.text.contains('.com') &&
                                    (controller.text.contains('@'))) {
                                  btnController.start();
                                  await Future.delayed(const Duration(seconds: 3));
                                  await buttonsucces();
                                  Navigator.pushReplacementNamed(
                                      context, SigninScreen.route);
                                } else {
                                  btnController.start();
                                  await Future.delayed(const Duration(seconds: 3));
                                  await buttonerror();
                                  Notify.error(context, 'Something went wrong');
                                }
                              })
                        ],
                      )),
                    ]),
              ),
            )),
      ),
    );
  }
}
