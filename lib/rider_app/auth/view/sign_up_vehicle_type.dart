import 'dart:developer';

import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/cards/elevated_card_responsive.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/global_widgets/text_fields/with_suffix.dart';
import 'package:fasta/global_widgets/text_fields/with_title.dart';
import 'package:fasta/rider_app/auth/bloc/auth_rider_bloc.dart';
import 'package:fasta/rider_app/auth/repository/arguments.dart';
import 'package:fasta/rider_app/auth/view/sign_up_verification.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehicleInfoRiderView extends StatefulWidget {
  static const String route = '/VehicleInfoRiderView';
  const VehicleInfoRiderView({Key? key}) : super(key: key);

  @override
  State<VehicleInfoRiderView> createState() => _VehicleInfoRiderViewState();
}

class _VehicleInfoRiderViewState extends State<VehicleInfoRiderView>
    with RoundedLoadingButtonMixin {
  final TextEditingController manufacturerController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController bikeYearController = TextEditingController();
  final TextEditingController plateNumberController = TextEditingController();
  final TextEditingController bikeColorController = TextEditingController();
  final TextEditingController enginePowerController = TextEditingController();
  final TextEditingController countryCodeController = TextEditingController();
  final TextEditingController vehicleTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        type: AppBarType.empty,
        customAppBar: AppBar(
            backgroundColor: FastaColors.primary2,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
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
            'assets/page2.png',
            width: 1.screenWidth,
          )),
          SizedBox(
            height: 48.h,
          ),
          Text('Bike Manufacturer', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          TextFieldWithSuffixIcon(
            controller: manufacturerController,
            onPressed: () {
              selectbikeManufacturerTypeDialog(context, manufacturerController);
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Bike Model', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          TextFieldWithSuffixIcon(
            controller: modelController,
            onPressed: () {
              dialogBuilder(
                  context: context,
                  controller: modelController,
                  title: 'Please Your Bike Model',
                  hintText: 'Seach Model',
                  data: _modelData);
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Bike Year', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          TextFieldWithSuffixIcon(
            controller: bikeYearController,
            onPressed: () {
              dialogBuilder(
                  context: context,
                  controller: bikeYearController,
                  title: 'Please Your Bike Year',
                  hintText: 'Seach Year',
                  data: _dateData);
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          TextFieldWithTitle(
            controller: plateNumberController,
            title: 'Licence Plate',
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Bike Color', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          TextFieldWithSuffixIcon(
            controller: bikeColorController,
            onPressed: () {
              dialogBuilder(
                context: context,
                controller: bikeColorController,
                title: 'Please Your Bike Color',
                hintText: 'Seach Color',
                bikeColor: _colorPalette,
              );
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          Text('Engine Power', style: FastaTextStyle.subtitle2),
          SizedBox(
            height: 9.h,
          ),
          TextFieldWithSuffixIcon(
            controller: enginePowerController,
            onPressed: () {
              bikePowerDialog(
                  context: context,
                  controller: enginePowerController,
                  data: enginePowerData);
            },
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
              selectVehicleTypeDialog1(context, vehicleTypeController);
            },
          ),
          SizedBox(
            height: 65.h,
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
                Navigator.pushNamed(context, VerificationRiderView.route);
              }
            },
            child: CustomButton(
                controller: btnController,
                onPressed: () {
                  context.read<AuthRiderBloc>().add(AuthRiderEvent.updateDriverVehicle(arg: VehicleArg(
                        name: manufacturerController.text,
                        description: 'description',
                        type: vehicleTypeController.text,
                        number: plateNumberController.text ,
                        model: modelController.text,
                        make: 'make',
                        year: bikeYearController.text ,
                        color: bikeColorController.text,
                        enginePower: enginePowerController.text,
                      )));
                }),
          ),
          SizedBox(
            height: 26.h,
          ),
          const LoginOption(),
          SizedBox(
            height: 63.h,
          ),
        ]));
  }
}

class LoginOption extends StatelessWidget {
  const LoginOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
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
              // SizedBox(
              //   height: 36.h,
              //   width: 1.screenWidth,
              // ),
              // GestureDetector(
              //   onTap: (() {
              //     Navigator.pop(context);
              //     controller.text = _filteredData[0].name;
              //   }),
              //   child: ElevatedCardResponsive(
              //     height: 64.h,
              //     width: 204.w,
              //     image: _filteredData[0].image,
              //     type: _filteredData[0].name,
              //     isSelected: false,
              //   ),
              // ),
              // SizedBox(
              //   height: 9.h,
              // ),
              // GestureDetector(
              //   onTap: (() {
              //     Navigator.pop(context);
              //     controller.text = _filteredData[1].name;
              //   }),
              //   child: ElevatedCardResponsive(
              //     height: 64.h,
              //     width: 204.w,
              //     image: _filteredData[1].image,
              //     type: _filteredData[1].name,
              //     isSelected: false,
              //   ),
              // ),
              // SizedBox(
              //   height: 9.h,
              // ),
              // GestureDetector(
              //   onTap: (() {
              //     Navigator.pop(context);
              //     controller.text = _filteredData[2].name;
              //   }),
              //   child: ElevatedCardResponsive(
              //     height: 64.h,
              //     width: 204.w,
              //     image: _filteredData[2].image,
              //     type: _filteredData[2].name,
              //     isSelected: false,
              //   ),
              // ),
              SizedBox(
                height: 9.h,
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

Future<void> selectbikeManufacturerTypeDialog(
    BuildContext context, TextEditingController controller) async {
  controller.clear();
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
        title: const Center(
            child: Text('Kindly Select Your Bike Manufacturer',
                textAlign: TextAlign.center)),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: StatefulBuilder(builder: (context, setState) {
          List<String> _filteredData = [
            ..._data
                .where((value) => value
                    .toLowerCase()
                    .trim()
                    .contains(controller.text.toLowerCase().trim()))
                .toList()
          ];
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 36.h,
                  width: 1.screenWidth,
                ),
                TextFormField(
                    controller: controller,
                    onChanged: (_) {
                      // _filteredData =
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      fillColor: FastaColors.grey5,
                      filled: true,
                      suffixIcon: const Icon(Icons.search),
                      hintText: 'Search Manufacturer',
                      hintStyle: FastaTextStyle.subtitle3
                          .copyWith(color: FastaColors.grey8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13.h)),
                    )),
                SizedBox(
                  height: 27.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    addbikeManufacturerTypeDialog(context, controller, _data);
                  },
                  child: Container(
                      width: 158.w,
                      height: 51.h,
                      decoration: BoxDecoration(
                          color: FastaColors.primary,
                          borderRadius: BorderRadius.circular(13.h)),
                      child: Center(
                        child: Text(
                          'Add new +',
                          style: FastaTextStyle.hardLabel2.copyWith(
                              fontSize: 20.f, color: FastaColors.primary2),
                        ),
                      )),
                ),
                SizedBox(
                  height: 7.h,
                ),
                ...List.generate(_filteredData.length, ((index) {
                  int? _isSelectedIndex;
                  log(_filteredData
                      .where((value) => value.contains('d'))
                      .toString());
                  log(_filteredData.toString());
                  return GestureDetector(
                      onTap: () {
                        controller.text = _filteredData[index];
                        Navigator.pop(context);
                      },
                      child: ElevatedCardResponsive(
                        mainAxisAlignment: MainAxisAlignment.start,
                        width: 158.w,
                        isSelected: (index == _isSelectedIndex) ? true : false,
                        height: 51.h,
                        children: [
                          Image.asset(
                            'assets/star.png',
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Expanded(
                            child: Text(
                              _filteredData[index],
                              style: FastaTextStyle.hardLabel2,
                            ),
                          ),
                        ],
                      ));
                })),
                SizedBox(
                  height: 9.h,
                ),
                SizedBox(
                  height: 57.h,
                ),
              ],
            ),
          );
        }),
      );
    },
  );
}

Future<void> dialogBuilder(
    {required BuildContext context,
    required TextEditingController controller,
    required String title,
    required String hintText,
    List<_BikeColor>? bikeColor,
    List<String>? data}) async {
  controller.clear();
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
        title: Center(
            child: Text(
          title,
          textAlign: TextAlign.center,
        )),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: StatefulBuilder(builder: (context, setState) {
          List _filteredData = [
            if (data != null)
              ...data
                  .where((value) => value
                      .toLowerCase()
                      .trim()
                      .contains(controller.text.toLowerCase().trim()))
                  .toList(),
            if (bikeColor != null)
              ...bikeColor
                  .where((value) => value.colorName
                      .toLowerCase()
                      .trim()
                      .contains(controller.text.toLowerCase().trim()))
                  .toList(),
          ];
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 36.h,
                  width: 1.screenWidth,
                ),
                TextFormField(
                    controller: controller,
                    onChanged: (_) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      fillColor: FastaColors.grey5,
                      filled: true,
                      suffixIcon: const Icon(Icons.search),
                      hintText: hintText,
                      hintStyle: FastaTextStyle.subtitle3
                          .copyWith(color: FastaColors.grey8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13.h)),
                    )),
                SizedBox(
                  height: 27.h,
                ),
                ...List.generate(_filteredData.length, ((index) {
                  int? _isSelectedIndex;
                  return GestureDetector(
                      onTap: () {
                        controller.text = (bikeColor != null)
                            ? (_filteredData[index] as _BikeColor).colorName
                            : _filteredData[index];
                        Navigator.pop(context);
                      },
                      child: ElevatedCardResponsive(
                        mainAxisAlignment: MainAxisAlignment.start,
                        width: 158.w,
                        isSelected: (index == _isSelectedIndex) ? true : false,
                        height: 51.h,
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          (bikeColor != null)
                              ? _ColorPaletteBuilder(
                                  title: (_filteredData[index] as _BikeColor)
                                      .colorName,
                                  color: (_filteredData[index] as _BikeColor)
                                      .color,
                                )
                              : Expanded(
                                  child: Text(
                                    _filteredData[index],
                                    style: FastaTextStyle.hardLabel2
                                        .copyWith(fontSize: 20.f),
                                  ),
                                ),
                        ],
                      ));
                })),
                SizedBox(
                  height: 57.h,
                ),
              ],
            ),
          );
        }),
      );
    },
  );
}

Future<void> addbikeManufacturerTypeDialog(BuildContext context,
    TextEditingController controller, List<String> data) async {
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
        title:
            const Center(child: Text('Kindly Select Your Bike Manufacturer')),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 36.h,
                  width: 1.screenWidth,
                ),
                TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      fillColor: FastaColors.grey5,
                      filled: true,
                      suffixIcon: const Icon(Icons.search),
                      hintText: 'Manufacturer name',
                      hintStyle: FastaTextStyle.subtitle3
                          .copyWith(color: FastaColors.grey8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13.h)),
                    )),
                SizedBox(
                  height: 27.h,
                ),
                GestureDetector(
                  onTap: () {
                    data.add(controller.text);
                    Navigator.pop(context);
                  },
                  child: Container(
                      width: 67.w,
                      height: 51.h,
                      decoration: BoxDecoration(
                          color: FastaColors.primary,
                          borderRadius: BorderRadius.circular(13.h)),
                      child: Center(
                        child: Text(
                          'Add',
                          style: FastaTextStyle.hardLabel2.copyWith(
                              fontSize: 20.f, color: FastaColors.primary2),
                        ),
                      )),
                ),
                SizedBox(
                  height: 57.h,
                ),
              ],
            ),
          );
        }),
      );
    },
  );
}

Future<void> bikePowerDialog(
    {required BuildContext context,
    required TextEditingController controller,
    required List<String> data}) async {
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
        title: const Center(
            child: Text(
          'Please select Your bike\'s Engine Power',
          textAlign: TextAlign.center,
        )),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        content: StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 36.h,
                  width: 1.screenWidth,
                ),
                ...List.generate(data.length, ((index) {
                  int? _isSelectedIndex;
                  return GestureDetector(
                      onTap: () {
                        controller.text = data[index];
                        Navigator.pop(context);
                      },
                      child: ElevatedCardResponsive(
                        mainAxisAlignment: MainAxisAlignment.start,
                        width: 158.w,
                        isSelected: (index == _isSelectedIndex) ? true : false,
                        height: 51.h,
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Expanded(
                            child: Text(
                              data[index],
                              style: FastaTextStyle.hardLabel2
                                  .copyWith(fontSize: 20.f),
                            ),
                          ),
                        ],
                      ));
                })),
                SizedBox(
                  height: 57.h,
                ),
              ],
            ),
          );
        }),
      );
    },
  );
}

List<String> _data = ['Yamaha', 'Ducati', 'Triumph'];
List<String> _modelData = ['A300', 'A600', 'S250', 'J100'];
List<String> _dateData = [
  '2019',
  '2018',
  '2017',
  '2016',
  '2015',
  '2014',
  '2013'
];

class _ColorPaletteBuilder extends StatelessWidget {
  final String title;
  final Color color;
  const _ColorPaletteBuilder({
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 7.h,
          backgroundColor: color,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          title,
          style: FastaTextStyle.hardLabel2.copyWith(fontSize: 20.f),
        ),
      ],
    );
  }
}

class _BikeColor {
  final String colorName;
  final Color color;

  _BikeColor(this.colorName, this.color);
}

List<String> enginePowerData = ['200CC', '250CC', '300CC'];

List<_BikeColor> _colorPalette = [
  _BikeColor('Black', FastaColors.primary),
  _BikeColor('Blue', FastaColors.blue),
  _BikeColor('Yellow', FastaColors.yellow),
  _BikeColor('Pink', FastaColors.pink),
];
Future<void> selectVehicleTypeDialog1(
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
                  controller.text = _data1[0].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data1[0].image,
                  type: _data1[0].name,
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  controller.text = _data1[1].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data1[1].image,
                  type: _data1[1].name,
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  controller.text = _data1[2].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data1[2].image,
                  type: _data1[2].name,
                  isSelected: false,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  controller.text = _data1[3].name;
                }),
                child: ElevatedCardResponsive(
                  height: 64.h,
                  width: 204.w,
                  image: _data1[3].image,
                  type: _data1[3].name,
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

List<_RideOptions> _data1 = [
  _RideOptions('bike', 'bike_small'),
  _RideOptions('bus', 'car'),
  _RideOptions('van', 'delivery-van'),
  _RideOptions('truck', 'container'),
];
