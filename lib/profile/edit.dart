import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/profile/repository/args.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasta/profile/application/bloc/profile_bloc.dart';

class EditProfileView extends StatefulWidget {
  static const String route = '/EditProfileView';
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView>
    with RoundedLoadingButtonMixin {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              children: [
                CircleAvatar(
                    radius: 62.h,
                    backgroundImage: Image.asset('assets/young.png').image),
                SizedBox(
                  height: 12.8.h,
                ),
                Text(
                  state.user?.fullName ?? '',
                  style: FastaTextStyle.hardLabel2,
                ),
                Container(
                  height: 28.h,
                  width: 93.w,
                  margin: EdgeInsets.only(top: 8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.h),
                    color: FastaColors.primary,
                  ),
                  child: Center(
                    child: Text(
                      'ID: ${state.user?.id}',
                      style: FastaTextStyle.subtitleHard
                          .copyWith(color: FastaColors.primary2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 78.h,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Full Name",
                    style: FastaTextStyle.hardLabel2,
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
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
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                                controller: email
                                  ..text = state.user?.fullName ?? '',
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                )))),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Email",
                    style: FastaTextStyle.hardLabel2,
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
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
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                                controller: email
                                  ..text = state.user?.email ?? '',
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                )))),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Password",
                    style: FastaTextStyle.hardLabel2,
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
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
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                                obscureText: true,
                                controller: password..text = '',
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove_red_eye)),
                                  border: InputBorder.none,
                                )))),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Phone Number",
                    style: FastaTextStyle.hardLabel2,
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
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
                                padding:
                                    EdgeInsets.only(left: 15.w, right: 15.w),
                                child: TextFormField(
                                    controller:
                                        TextEditingController(text: '+234'),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "+234",
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
                              borderRadius: BorderRadius.circular(13.0.h),
                            ),
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 15.h, right: 15.h),
                                child: TextFormField(
                                    controller: phoneNumber
                                      ..text = state.user?.phoneNumber ?? '',
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    )))),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 78.h,
                ),
                CustomButton(
                    controller: btnController,
                    onPressed: () {
                      // if (phoneNumber.text.isNotEmpty &&
                      //     password.text.isNotEmpty &&
                      //     email.text.isNotEmpty &&
                      //     fullName.text.isNotEmpty) {
                      context
                          .read<ProfileBloc>()
                          .add(ProfileEvent.updateProfile(
                              arg: ProfileArg(
                            fullName: fullName.text,
                            phoneNumber: phoneNumber.text,
                            email: email.text,
                          )));
                      // }
                    }),
                SizedBox(
                  height: 70.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
