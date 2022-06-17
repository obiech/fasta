import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/global_widgets/text_fields/with_title.dart';
import 'package:fasta/rider_app/auth/view/add_photo.dart';
import 'package:fasta/rider_app/auth/view/sign_up_confirmation.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class BikeNameRiderView extends StatefulWidget {
  static const String route = '/BikeNameRiderView';
  const BikeNameRiderView({Key? key}) : super(key: key);

  @override
  State<BikeNameRiderView> createState() => _BikeNameRiderViewState();
}

class _BikeNameRiderViewState extends State<BikeNameRiderView>
    with RoundedLoadingButtonMixin {
  final TextEditingController bikeNameController = TextEditingController();

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
            height: 79.h,
          ),
          CircleAvatar(
            radius: 37.h,
            backgroundColor: FastaColors.lightOrange,
            backgroundImage: Image.asset('assets/2.png').image,
          ),
          SizedBox(
            height: 17.h,
          ),
          Text(
            'You\'re Almost Done',
            style: FastaTextStyle.headline1,
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'What would you like to name your bike?',
            style: FastaTextStyle.subtitle3.copyWith(fontSize: 15.f),
          ),
          SizedBox(
            height: 67.h,
          ),
          TextFieldWithTitle(
            controller: bikeNameController,
            title: 'Bike Name',
          ),
          SizedBox(
            height: 92.h,
          ),
          CustomButton(
              controller: btnController,
              onPressed: () async{
                btnController.start();
                await Future.delayed(Duration(seconds: 5));
                Navigator.pushNamed(context, AddPhotoRiderView.route);
              }),
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
