import 'dart:io';
import 'dart:typed_data';

import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/profile/repository/args.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasta/profile/application/bloc/profile_bloc.dart';
import 'package:images_picker/images_picker.dart';

// add email and phonnumer
class EditProfileView extends StatefulWidget {
  static const String route = '/EditProfileView';
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView>
    with RoundedLoadingButtonMixin {
  // final TextEditingController fullName = TextEditingController();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  // final TextEditingController password = TextEditingController();
  // final TextEditingController country = TextEditingController();
  // final TextEditingController city = TextEditingController();
  // final TextEditingController stateController = TextEditingController();
  Uint8List? bytes;
  ImageProvider? itemImage;

  Future pickImage() async {
    List<Media>? res = await ImagesPicker.pick(
      pickType: PickType.image,
    );
    if (res != null) {
      // itemPath = res.first.thumbPath;
      // itemImage = null;
      bytes = File(res.first.thumbPath!).readAsBytesSync();
      itemImage = MemoryImage(bytes!);
      setState(() {});
    }
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
          child: BlocConsumer<ProfileBloc, ProfileState>(
            buildWhen: (previous, current) =>
                current.status != AppState.loading,
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
            builder: (context, state) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      // await pickImage();
                    },
                    child: CircleAvatar(
                      radius: 62.h,
                      backgroundColor: FastaColors.ligthOrange2,
                      backgroundImage: (itemImage == null)
                          ? Image.asset('assets/2.png').image
                          : itemImage as ImageProvider,
                    ),
                  ),
                  SizedBox(
                    height: 12.8.h,
                  ),
                  Text(
                    state.user?.fullName ?? '',
                    style: FastaTextStyle.hardLabel2,
                  ),
                  Container(
                    height: 28.h,
                    width: 150.w,
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
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last Name",
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
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: TextFormField(
                                      controller: lastName
                                        ..text = state.user?.fullName.split(' ')[0] ?? '',
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      )))),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "First Name",
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
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: TextFormField(
                                      controller: firstName
                                        ..text =state.user?.fullName.split(' ')[1] ?? '',
                                      decoration: const InputDecoration(
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
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: TextFormField(
                                    readOnly: true,
                                      controller: TextEditingController(text: state.user!.phoneNumber),
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
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: TextFormField(
                                    readOnly: true,
                                      controller: TextEditingController(text: state.user!.email),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      )))),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      
                      ]),
                  SizedBox(
                    height: 78.h,
                  ),
                  CustomButton(
                      controller: btnController,
                      onPressed: () {
                        context
                            .read<ProfileBloc>()
                            .add(ProfileEvent.updateProfile(
                                arg: ProfileArg(
                              fullName: lastName.text + ' ' + firstName.text,
                              // city: city.text,
                              // state: stateController.text,
                              // country: country.text,
                            )));
                        // if (bytes != null) {
                        //   context
                        //       .read<ProfileBloc>()
                        //       .add(ProfileEvent.updateProfileAvater(bytes!));
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
      ),
    );
  }
}
