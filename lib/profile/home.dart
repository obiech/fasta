import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/nav/bottom_nav_bar.dart';
import 'package:fasta/onboarding/fasta_type.dart';
import 'package:fasta/profile/application/bloc/profile_bloc.dart';
import 'package:fasta/profile/edit.dart';
import 'package:fasta/profile/support.dart';
import 'package:fasta/profile/verify_email.dart';
import 'package:fasta/profile/widgets/feature_builder.dart';
import 'package:fasta/security/home.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatefulWidget {
  static const String route = '/ProfileView';
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
        await Future.delayed(const Duration(seconds: 3));
      },
      child: Scaffold(
        backgroundColor: FastaColors.primary2,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 81.h,
          backgroundColor: FastaColors.primary2,
          leadingWidth: 50.w,
          leading: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: FastaColors.primary),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          physics: const BouncingScrollPhysics(),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return Column(
                children: [
                  CircleAvatar(
                      radius: 62.h,
                      backgroundColor: FastaColors.ligthOrange2,
                      backgroundImage: Image.asset(
                        'assets/2.png',
                      ).image),
                  SizedBox(
                    height: 12.8.h,
                  ),
                  Text(
                    state.user?.fullName ?? "",
                    style: FastaTextStyle.hardLabel2,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      // constraints: BoxConstraints..,
                      height: 28.h,
                      width: 150.w,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      margin: EdgeInsets.only(top: 7.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.h),
                        color: FastaColors.primary,
                      ),
                      child: Center(
                        child: Text(
                          'ID: ${state.user?.id ?? ""}',
                          style: FastaTextStyle.subtitleHard
                              .copyWith(color: FastaColors.primary2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  GestureDetector(
                    onTap: (() =>
                        Navigator.pushNamed(context, EditProfileView.route)),
                    child: Container(
                        height: 28.h,
                        width: 89.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: FastaColors.grey9),
                          borderRadius: BorderRadius.circular(11.h),
                          color: FastaColors.grey10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Text(
                                'Edit Profile',
                                style: FastaTextStyle.subtitleHard,
                              ),
                            ),
                            const Icon(Icons.edit)
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  Column(
                      children: List.generate(_data.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        switch (index) {
                          // case 0:
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context) {
                          //     return const BottomNavBar(index: 2);
                          //   }));
                          //   break;
                          case 0:
                            Navigator.pushNamed(
                                context, TransactionHistory.route);
                            break;
                          case 1:
                            if (!state.user!.emailVerified) {
                              Navigator.pushNamed(context, VerifyEmail.route);
                            } else {
                              Notify.error(context, 'Email Already Verified');
                            }

                            break;
                          case 2:
                            Navigator.pushNamed(context, SupportView.route);
                            break;
                          case 3:
                            Navigator.pushNamed(context, SecurityView.route);

                            break;
                          default:
                        }
                      },
                      child: FeatureBuilder(
                          name: _data[index].name, icon: _data[index].icon),
                    );
                  })),
                  SizedBox(
                    height: 70.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, FastaTypeSelection.route, (route) => false);
                    },
                    child: Center(
                        child: Text(
                      'Log Out',
                      style: FastaTextStyle.hardLabel,
                    )),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Features {
  final String name;
  final IconData icon;

  const _Features(this.name, this.icon);
}

const List<_Features> _data = [
  // _Features('Payment', Icons.payment_outlined),
  _Features('Transaction History', Icons.history_rounded),
  _Features('Verifications', Icons.personal_injury),
  _Features('Help & Support', Icons.person),
  _Features('Security', Icons.lock_clock_rounded),

  _Features('About', Icons.person),
];
