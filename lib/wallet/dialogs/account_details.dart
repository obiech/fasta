import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/dialogs/success.dart';
import 'package:fasta/wallet/repository/args.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> accountDetailsDialog(BuildContext context, String bankName) async {
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
        title: const Center(child: Text('Account details')),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 34.h,
        ),
        content: BlocBuilder<PaystackBloc, PaystackState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Transfer ',
                          style: FastaTextStyle.subtitle2,
                          children: [
                            TextSpan(
                              text: state.amount,
                              style: FastaTextStyle.subtitle2.copyWith(
                                  fontWeight: FastaFontWeight.semiBold),
                            ),
                            TextSpan(
                              text:
                                  'to ${state.accountInfo?.accountName ?? ''}',
                              style: FastaTextStyle.subtitle2,
                            )
                          ])),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 128.h,
                    width: 274.w,
                    decoration: BoxDecoration(
                        color: FastaColors.grey5,
                        borderRadius: BorderRadius.circular(13.h)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          bankName,
                          style: FastaTextStyle.subtitle1,
                        ),
                        Text(
                          state.accountInfo?.accountNumber ?? "",
                          style: FastaTextStyle.headline6,
                        ),
                        Text(
                          state.accountInfo?.accountName ?? "",
                          style: FastaTextStyle.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34.h,
                    width: 1.screenWidth,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Text('Cancel', style: FastaTextStyle.hardLabel)),
                      BlocListener<PaystackBloc, PaystackState>(
                        listenWhen: (previous, current) => buttonClicked,
                        listener: (context, state) {
                          if (state.appState == AppState.success) {
                            Navigator.pop(context);
                            successDialog(context, 'Withdraw');
                          }
                        },
                        child: GestureDetector(
                          onTap: () {
                            context.read<PaystackBloc>().add(
                                  const PaystackEvent.confirmWithdrawalOtp(),
                                );
                            buttonClicked = true;
                          },
                          child: Container(
                            height: 45.h,
                            width: 135.w,
                            decoration: BoxDecoration(
                                color: FastaColors.primary,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(13.h)),
                            child: Center(
                              child: Text('Proceed',
                                  style: FastaTextStyle.hardLabel
                                      .copyWith(color: FastaColors.primary2)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 81.h,
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
