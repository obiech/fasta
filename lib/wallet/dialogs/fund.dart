import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/text_fields/text_field_with_hint_text.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

Future<void> fundDialog(
    BuildContext context, TextEditingController controller) async {
  final btnController = RoundedLoadingButtonController();
  bool buttconClicked = false;
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.h)),
        titleTextStyle: FastaTextStyle.headline6.copyWith(
          fontSize: 26.f,
        ),
        titlePadding: EdgeInsets.only(top: 32.h, left: 24.w),
        title: const Text('Fund Wallet'),
        contentPadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomHintTextField(
                controller: controller,
                hintText: '\$ Enter Amount',
              ),
              SizedBox(
                height: 64.h,
                width: 1.screenWidth,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel', style: FastaTextStyle.hardLabel)),
                  BlocListener<PaystackBloc, PaystackState>(
                    listenWhen: (previous, current) => buttconClicked,
                    listener: (context, state) async {
                      if (state.appState == AppState.waiting) {
                      } else if (state.appState == AppState.loading) {
                        btnController.start();
                        Notify.success(context, 'Loading');
                      } else if (state.appState == AppState.success &&
                          state.payStack?.authorizationUrl != null) {
                        // await buttonsucces();
                        btnController.success();
                        btnController.reset();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return PayStackPaymentView(
                            url: state.payStack!.authorizationUrl,
                            creditAmount: int.parse(controller.text.trim()),
                          );
                        }));
                      } else if (state.appState == AppState.failed) {
                        // await buttonerror();
                        btnController.error();
                        btnController.reset();

                        Notify.error(
                            context,
                            state.error?.errorMessage ??
                                'Something went wrong');
                      }
                    },
                    child: GestureDetector(
                      onTap: () {
                        // if (controller.text.isNotEmpty) {
                        //   context.read<PaystackBloc>().add(
                        //       PaystackEvent.getDepositLink(controller.text));
                        // } else {
                        //   Notify.error(context, 'Enter Amount');
                        // }
                      },
                      child: CustomButton.named(
                          controller: btnController,
                          width: 92.w,
                          name: 'Fund',
                          onPressed: () {
                            if (controller.text.isNotEmpty) {
                              context.read<PaystackBloc>().add(
                                  PaystackEvent.getDepositLink(
                                      controller.text));
                              buttconClicked = true;
                            } else {
                              Notify.error(context, 'Enter Amount');
                            }
                          }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
