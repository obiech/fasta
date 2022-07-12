import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/drop_down_buttons.dart/custom_drop_down_text_field.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/text_fields/text_field_with_hint_text.dart';
import 'package:fasta/profile/application/bloc/profile_bloc.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/dialogs/account_details.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

Future<void> inputAccountDetailsDialog(
    BuildContext context, TextEditingController controller) async {
  final otpController = TextEditingController();
  final btnController = RoundedLoadingButtonController();

  String? selectedBank;
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
        ),
        content: StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
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
                  hintText: 'Account Number',
                ),
                SizedBox(
                  height: 10.h,
                ),
                BlocBuilder<PaystackBloc, PaystackState>(
                  builder: (context, state) {
                    return CustomDropDownTextField<String>(
                      value: selectedBank,
                      items: [
                        ...state.bankList.map((e) => DropdownMenuItem(
                            child: Text(e.accountName), value: e.accountName))
                      ],
                      onChanged: (_) {
                        selectedBank = _;
                        setState;
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomHintTextField(
                  controller: otpController,
                  hintText: ' Enter OTP',
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
                          btnController.success();
                          btnController.reset();
                          Navigator.pop(context);
                          accountDetailsDialog(context, selectedBank!);
                        } else if (state.appState == AppState.failed) {
                          btnController.error();
                          btnController.reset();
                          Notify.error(
                              context,
                              state.error?.errorMessage ??
                                  'Something went wrong');
                        } else if (state.appState == AppState.loading) {
                          btnController.start();
                        }
                      },
                      builder: (context, state) {
                        return BlocBuilder<PaystackBloc, PaystackState>(
                          builder: (context, state) {
                            return BlocBuilder<ProfileBloc, ProfileState>(
                              builder: (context, profileState) {
                                return GestureDetector(
                                    onTap: () {},
                                    child: CustomButton.named(
                                      name: 'Continue',
                                      controller: btnController,
                                       width: 148.w,
                                      onPressed: () {
                                        context.read<PaystackBloc>().add(
                                            PaystackEvent.enterOtpAndBankCode(
                                                state.bankList
                                                    .firstWhere((element) =>
                                                        element.accountName ==
                                                        selectedBank)
                                                    .accountNumber,
                                                otpController.text,
                                                profileState.user!.id
                                                    .toString()));
                                        context.read<PaystackBloc>().add(
                                            PaystackEvent.resolveAccountNumber(
                                                controller.text,
                                                state.bankList
                                                    .firstWhere((element) =>
                                                        element.accountName ==
                                                        selectedBank)
                                                    .accountNumber));
                                        buttonClicked = true;
                                      },
                                    )
                                    // child: Container(
                                    //   height: 45.h,
                                    //   width: 148.w,
                                    //   decoration: BoxDecoration(
                                    //       color: FastaColors.primary,
                                    //       border: Border.all(),
                                    //       borderRadius:
                                    //           BorderRadius.circular(13.h)),
                                    //   child: Center(
                                    //     child: (state.appState ==
                                    //             AppState.loading)
                                    //         ? CircularProgressIndicator()
                                    //         : Text('Continue',
                                    //             style: FastaTextStyle.hardLabel
                                    //                 .copyWith(
                                    //                     color: FastaColors
                                    //                         .primary2)),
                                    //   ),
                                    // ),
                                    );
                              },
                            );
                          },
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
          );
        }),
      );
    },
  );
}
