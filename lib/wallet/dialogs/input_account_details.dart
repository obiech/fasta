import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/text_fields/text_field_with_hint_text.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/dialogs/account_details.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> inputAccountDetailsDialog(
    BuildContext context, TextEditingController controller) async {
  final bankController = TextEditingController();
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
        title: const Center(child: Text('Account details')),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose Destination account number',
                style: FastaTextStyle.softSubtitle,
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomHintTextField(
                controller: controller,
                hintText: '   Account Number',
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomHintTextField(
                controller: bankController,
                hintText: '   Bank Code',
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
                    listener: (context, state) {
                      if (state.appState == AppState.success) {
                        Navigator.pop(context);
                        accountDetailsDialog(context);
                      } else if (state.appState == AppState.failed) {
                        Notify.error(
                            context,
                            state.error?.errorMessage ??
                                'Something went wrong');
                      }
                    },
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          context.read<PaystackBloc>().add(
                              PaystackEvent.resolveAccountNumber(
                                  controller.text, bankController.text));
                        },
                        child: Container(
                          height: 45.h,
                          width: 148.w,
                          decoration: BoxDecoration(
                              color: FastaColors.primary,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(13.h)),
                          child: Center(
                            child: Text('Continue',
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
                height: 132.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
