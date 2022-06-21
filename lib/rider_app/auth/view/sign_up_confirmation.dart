import 'dart:io';

import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/cards/elevated_card_responsive.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/global_widgets/text_fields/custom_text_field.dart';
import 'package:fasta/global_widgets/text_fields/with_suffix.dart';
import 'package:fasta/global_widgets/text_fields/with_title.dart';
import 'package:fasta/rider_app/auth/bloc/auth_rider_bloc.dart';
import 'package:fasta/rider_app/auth/view/sign_up_vehicle_type.dart';
import 'package:fasta/rider_app/auth/view/sing_up_bike_name.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:images_picker/images_picker.dart';

class ConfirmationRiderView extends StatefulWidget {
  static const String route = '/ConfirmationRiderView';
  const ConfirmationRiderView({Key? key}) : super(key: key);

  @override
  State<ConfirmationRiderView> createState() => _ConfirmationRiderViewState();
}

class _ConfirmationRiderViewState extends State<ConfirmationRiderView>
    with RoundedLoadingButtonMixin {
  final TextEditingController licenceNumberController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController riderIDController = TextEditingController();
  final TextEditingController bikeIDController = TextEditingController();

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 39.h,
          ),
          Text(
            'Sign Up',
            style: FastaTextStyle.headline1,
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
              width: 1.screenWidth,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: BoxDecoration(
                  color: FastaColors.lightOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10.h))),
              child: Center(
                child: RichText(
                    text: TextSpan(
                        text: 'Note : ',
                        style: FastaTextStyle.subtitle2
                            .copyWith(fontWeight: FastaFontWeight.semiBold),
                        children: [
                      TextSpan(
                          text: 'We only accept bikes above 200cc',
                          style: FastaTextStyle.subtitle2)
                    ])),
              )),
          SizedBox(
            height: 28.h,
          ),
          Center(
              child: Image.asset(
            'assets/page4.png',
            width: 1.screenWidth,
          )),
          SizedBox(
            height: 48.h,
          ),
          TextFieldWithTitle(
            controller: licenceNumberController,
            title: 'Drivers Licence Number',
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Licence Expiry', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          TextFieldWithSuffixIcon(
            controller: expiryController,
            onPressed: () {
              expiryDateDialog(context: context, controller: expiryController);
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            controller: bikeIDController,
            title: 'Your Bike ID',
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            controller: riderIDController,
            title: 'Your Rider ID',
          ),
          SizedBox(
            height: 45.h,
          ),
          BlocListener<AuthRiderBloc, AuthRiderState>(
            listener: (context, state) async {
              if (state.status == AppState.loading) {
                btnController.start();
              } else if (state.status == AppState.failed) {
                await buttonerror();
                Notify.error(context, state.error);
              } else if (state.status == AppState.success) {
                await buttonsucces();
                Notify.success(context, 'Successful');
                Navigator.pushNamed(context, BikeNameRiderView.route);
              }
            },
            child: CustomButton(
                controller: btnController,
                onPressed: () {
                  context
                      .read<AuthRiderBloc>()
                      .add(const AuthRiderEvent.registerAsDriver());
                }),
          ),
          SizedBox(
            height: 26.h,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, SignupScreen.route);
              },
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyles.subtitle2,
                    children: <TextSpan>[
                      TextSpan(text: 'Login', style: TextStyles.subtitle02),
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 63.h,
          ),
        ]));
  }
}

Future<void> expiryDateDialog(
    {required BuildContext context,
    required TextEditingController controller}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.h)),
        content: StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
              child: SizedBox(
            height: 243.h,
            width: 1.screenWidth,
            child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(DateTime.now().year + 3),
              onDateChanged: (dateTime) {
                controller.text =
                    '${dateTime.day}/${dateTime.month}/${dateTime.year}';
                Navigator.pop(context);
              },
            ),
          ));
        }),
      );
    },
  );
}
