import 'dart:io';

import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/rider_app/nav/bottom_nav_bar.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:images_picker/images_picker.dart';

import '../../../global_widgets/notifications/notify.dart';

class AddPhotoRiderView extends StatefulWidget {
  static const String route = '/AddPhotoRiderView';
  const AddPhotoRiderView({Key? key}) : super(key: key);

  @override
  State<AddPhotoRiderView> createState() => _AddPhotoRiderViewState();
}

class _AddPhotoRiderViewState extends State<AddPhotoRiderView>
    with RoundedLoadingButtonMixin {
  ImageProvider? itemImage;
  String? itemPath;
  Future pickImage() async {
    List<Media>? res = await ImagesPicker.pick(
      cropOpt: CropOption(
        cropType: CropType.circle,
      ),
      pickType: PickType.image,
    );
    if (res != null) {
      itemPath = res.first.thumbPath;
      itemImage = null;
      var bytes = File(res.first.thumbPath!).readAsBytesSync();
      itemImage = MemoryImage(bytes);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        type: AppBarType.empty,
        customAppBar: AppBar(
            backgroundColor: FastaColors.primary2,
            elevation: 0,
            leading: IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.arrow_back, color: FastaColors.primary))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 38.h,
          ),
          Text(
            'Add Photograph',
            style: FastaTextStyle.headline1,
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            'Now is the time to upload your lovely face so that we can identify you.',
            style: FastaTextStyle.subtitle3.copyWith(fontSize: 15.f),
          ),
          SizedBox(
            height: 67.h,
          ),
          if (itemImage == null)
            GestureDetector(
                onTap: () {
                  pickImage();
                },
                child: Image.asset('assets/avater.png'))
          else
            Image(
              image: itemImage!,
              fit: BoxFit.cover,
              height: 181.h,
              width: 181.h,
            ),
          SizedBox(
            height: 71.h,
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) async {
              if (state.appState == AppState.waiting) {
              } else if (state.appState == AppState.loading) {
                btnController.start();
              } else if (state.appState == AppState.success) {
                await buttonsucces();
                congratsDialog(context: context);
              } else if (state.appState == AppState.failed) {
                await buttonerror();
                Notify.error(context, state.error.errorMessage);
              }
            },
            child: CustomButton.named(
                controller: btnController,
                name: 'Done',
                onPressed: () {
                  congratsDialog(context: context);
                }),
          ),
        ]));
  }
}

Future<void> congratsDialog({
  required BuildContext context,
}) async {
  Future.delayed(const Duration(seconds: 5)).then(
    (value) {
      Navigator.pushNamedAndRemoveUntil(
          context, BottomNavBarRider.route, (route) => false);
    },
  );
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.h)),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 37.h,
                backgroundColor: FastaColors.lightOrange,
                backgroundImage: Image.asset('assets/2.png').image,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Bravo!',
                style: FastaTextStyle.headline1.copyWith(fontSize: 26.f),
              ),
              SizedBox(
                height: 13.h,
              ),
              Text(
                'You are welcome on board John,'
                ' our support team will contact you soon '
                'for further information.',
                textAlign: TextAlign.center,
                style: FastaTextStyle.subtitle2,
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}
