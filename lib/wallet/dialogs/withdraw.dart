import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/text_fields/text_field_with_hint_text.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/dialogs/withdrawal_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> withdrawDialog(
    BuildContext context, TextEditingController controller) async {
  bool buttonClicked = false;
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
        title: const Text('Withdraw'),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Enter amount to withdraw from wallet'),
              SizedBox(
                height: 25.h,
              ),
              CustomHintTextField(
                controller: controller,
                hintText: 'Enter Amount',
              ),
              SizedBox(
                height: 42.h,
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
                  BlocConsumer<PaystackBloc, PaystackState>(
                    listenWhen: (previous, current) => buttonClicked,
                    listener: (context, state) {
                      if (state.appState == AppState.success) {
                        Navigator.pop(context);
                        withdrawOptionsDialog(context);
                      } else if (state.appState == AppState.failed) {
                        Notify.error(
                            context,
                            state.error?.errorMessage ??
                                'Something went Wrong');
                      }
                    },
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          context.read<PaystackBloc>().add(
                              PaystackEvent.initiateWithdrawal(
                                  controller.text));
                          buttonClicked = true;
                        },
                        child: Container(
                          height: 45.h,
                          width: 148.w,
                          decoration: BoxDecoration(
                              color: FastaColors.primary,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(13.h)),
                          child: Center(
                            child: Text('Withdraw',
                                style: FastaTextStyle.hardLabel
                                    .copyWith(color: FastaColors.primary2)),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
              SizedBox(
                height: 49.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
