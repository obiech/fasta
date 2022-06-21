import 'package:fasta/auth/bloc/auth_bloc.dart';
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
import 'package:fasta/rider_app/auth/view/sign_in_screen.dart';
import 'package:fasta/rider_app/auth/view/sign_up_vehicle_type.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpRiderView extends StatefulWidget {
  static const String route = '/SignUpRiderView';
  const SignUpRiderView({Key? key}) : super(key: key);

  @override
  State<SignUpRiderView> createState() => _SignUpRiderViewState();
}

class _SignUpRiderViewState extends State<SignUpRiderView>
    with RoundedLoadingButtonMixin {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController vehicleTypeController = TextEditingController();
  final TextEditingController countryCodeController = TextEditingController();

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
            height: 21.h,
          ),
          // Spacer(),
          Text(
              'Only your first name and vehicle details are'
              ' visible to clients during booking',
              style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 28.h,
          ),
          Center(
              child: Image.asset(
            'assets/page1.png',
            width: 1.screenWidth,
          )),
          SizedBox(
            height: 48.h,
          ),
          TextFieldWithTitle(
            controller: fullNameController,
            title: 'Full Name',
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            controller: emailController,
            title: 'Email',
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            controller: passwordController,
            title: 'Password',
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            controller: stateController,
            title: 'State',
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            controller: cityController,
            title: 'City',
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Phone Number', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 75.w,
                child: CustomTextField(
                  controller: countryCodeController..text = '+234',
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              SizedBox(
                width: 241.w,
                child: CustomTextField(
                  controller: phoneNumberController,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Vechicle Type', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          TextFieldWithSuffixIcon(
            controller: vehicleTypeController,
            onPressed: () {
              selectVehicleTypeDialog(context, vehicleTypeController);
            },
          ),
          SizedBox(
            height: 65.h,
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) async {
              if (state.appState == AppState.loading) {
                btnController.start();
              } else if (state.appState == AppState.failed) {
                await buttonerror();
                Notify.error(context, state.error.errorMessage);
              } else if (state.appState == AppState.success) {
                await buttonsucces();
                Notify.success(context, 'Successful');
                Navigator.pushNamed(context, VehicleInfoRiderView.route);
              }
            },
            child: CustomButton(
                controller: btnController,
                onPressed: () {
                  // context.read<AuthRiderBloc>().add(AuthRiderEvent.register(
                  //       fullName: fullNameController.text,
                  //       email: emailController.text,
                  //       password: passwordController.text,
                  //       state: stateController.text,
                  //       city: cityController.text,
                  //       phoneNumber: phoneNumberController.text,
                  //     ));
                  context.read<AuthBloc>().add(AuthEvent.register(
                                    fullName: fullNameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    state: stateController.text,
                                    city: cityController.text,
                                    phoneNumber: countryCodeController.text +
                                        phoneNumberController.text));
                }),
          ),
          SizedBox(
            height: 26.h,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SigninScreenRider.route);
              },
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyles.subtitle2,
                    children: <TextSpan>[
                      TextSpan(text: 'Sign in', style: TextStyles.subtitle02),
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

Future<void> selectVehicleTypeDialog(
    BuildContext context, TextEditingController controller) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(31.h)),
        titleTextStyle: FastaTextStyle.hardLabel.copyWith(
          fontSize: 20.f,
        ),
        title: const Center(child: Text('Please Select Vehicle Type')),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 36.h,
                width: 1.screenWidth,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  controller.text = _data[0].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data[0].image,
                  type: _data[0].name,
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  controller.text = _data[1].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data[1].image,
                  type: _data[1].name,
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  controller.text = _data[2].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data[2].image,
                  type: _data[2].name,
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  controller.text = _data[3].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data[3].image,
                  type: _data[3].name,
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 57.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}

class _RideOptions {
  final String name, image;

  _RideOptions(this.name, this.image);
}

List<_RideOptions> _data = [
  _RideOptions('Bike', 'bike_small'),
  _RideOptions('Car', 'car'),
  _RideOptions('Mini Van', 'delivery-van'),
  _RideOptions('Truck', 'container'),
];
