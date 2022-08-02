import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/profile/application/bloc/profile_bloc.dart';
import 'package:fasta/profile/repository/args.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyEmail extends StatefulWidget {
  static const String route = '/VerifyEmail';
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail>
    with RoundedLoadingButtonMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            context
                .read<ProfileBloc>()
                .add(ProfileEvent.resendEmailOtp(state.user?.email ?? ''));
            await Future.delayed(const Duration(seconds: 3));
          },
          child: CustomScaffold(
            type: AppBarType.backButton,
            iconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
            onPressed: () => Navigator.pop(context),
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Verify Email',
                        style: FastaTextStyle.headline6,
                      ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Text(
                        'Please enter the 6 digit code sent to ${state.user?.email}',
                        style: FastaTextStyle.subtitle2),
                    SizedBox(height: 30.h),
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: FastaColors.transparent,
                      showFieldAsBox: true,
                      keyboardType: TextInputType.number,
                      fillColor: FastaColors.grey5,
                      filled: true,
                      onSubmit: (_) {
                        context.read<ProfileBloc>().add(
                            ProfileEvent.verifyEmail(VerifyEmailArg(
                                _,
                                state.otpId ?? '',
                                state.user?.userId.toString() ?? '')));
                      },
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<ProfileBloc>().add(
                            ProfileEvent.resendEmailOtp(
                                state.user?.email ?? ''));
                      },
                      child: Text(
                        'Resend code',
                        style: FastaTextStyle.subtitle3,
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    BlocListener<ProfileBloc, ProfileState>(
                      listener: (context, state) async {
                        if (state.status == AppState.loading) {
                          btnController.start();
                        } else if (state.status == AppState.failed) {
                          await buttonerror();
                          Notify.error(context, state.errorMessage);
                        } else if (state.status == AppState.success) {
                          await buttonsucces();
                          Navigator.pop(context);
                        }
                      },
                      child: CustomButton.named(
                          controller: btnController,
                          onPressed: () {
                            context.read<ProfileBloc>().add(
                                ProfileEvent.resendEmailOtp(
                                    state.user?.email ?? ''));
                          },
                          name: 'Verify'),
                    )
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
