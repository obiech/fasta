import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/text_fields/text_field_with_hint_text.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> fundDialog(
    BuildContext context, TextEditingController controller) async {
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
                    listener: (context, state) {
                      if (state.appState == AppState.waiting) {
                      } else if (state.appState == AppState.loading) {
                        // btnController.start();
                        Notify.success(context, 'Loading');
                      } else if (state.appState == AppState.success) {
                        // await buttonsucces();

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return PayStackPaymentView(
                            url: state.payStack!.authorizationUrl,
                            creditAmount: int.parse(controller.text.trim()),
                          );
                        }));
                      } else if (state.appState == AppState.failed) {
                        // await buttonerror();
                        Notify.error(
                            context,
                            state.error?.errorMessage ??
                                'Something went wrong');
                      }
                    },
                    child: GestureDetector(
                      onTap: () {
                        if (controller.text.isNotEmpty) {
                          context.read<PaystackBloc>().add(
                              PaystackEvent.getDepositLink(controller.text));
                        } else {
                          Notify.error(context, 'Enter Amount');
                        }
                      },
                      child: Container(
                        height: 55.h,
                        width: 92.w,
                        decoration: BoxDecoration(
                            color: FastaColors.primary,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(13.h)),
                        child: Center(
                          child: Text('Fund',
                              style: FastaTextStyle.hardLabel
                                  .copyWith(color: FastaColors.primary2)),
                        ),
                      ),
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
