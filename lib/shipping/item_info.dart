import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/application/map/shipment_bloc.dart';
// import 'package:image_picker/image_picker.dart';

import 'package:fasta/shipping/payment_option.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:images_picker/images_picker.dart';

class ItemInfo extends StatefulWidget {
  static const String route = '/ItemInfo';
  const ItemInfo({Key? key}) : super(key: key);

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> with RoundedLoadingButtonMixin {
  final TextEditingController itemNameController = TextEditingController();
  final TextEditingController quatityController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  ImageProvider? itemImage;
  String? itemPath;
  late Map<String, dynamic> arg;

  String _placeDistance = '';

  String _startAddress = '';

  String _currentAddress = '';

  Position? _currentPosition;

  String dropDownValue = 'Fragile';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arg = (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>);
  }

  @override
  void initState() {
    super.initState();
    // context.read<ShipmentBloc>().add(const ShipmentEvent.getCurrentLocation());
  }

  Future pickImage() async {
    List<Media>? res = await ImagesPicker.pick(
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
    return Scaffold(
      extendBody: true,
      backgroundColor: FastaColors.primary2,
      appBar: AppBarWithBackButton(
        onPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 27.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Item Info",
              style: FastaTextStyle.headline1,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Fill in info details',
              style: FastaTextStyle.subtitle1,
            ),
            SizedBox(
              height: 29.h,
            ),
            SizedBox(
              child: Card(
                elevation: 9,
                color: FastaColors.primary2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.h)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 36.w),
                      height: 63.h,
                      width: 328.w,
                      child: Text(
                        "Item",
                        style: FastaTextStyle.hardLabel,
                      ),
                      decoration: BoxDecoration(
                          color: FastaColors.lightOrange,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.h),
                              topRight: Radius.circular(30.h))),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: Text(
                        "Item Name :",
                        style: FastaTextStyle.subtitle3
                            .copyWith(fontWeight: FastaFontWeight.semiBold),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: TextFormField(
                          controller: itemNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9.h)),
                          )),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity :",
                                style: FastaTextStyle.subtitle3.copyWith(
                                    fontWeight: FastaFontWeight.semiBold),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              SizedBox(
                                width: 131.w,
                                child: TextFormField(
                                    controller: quatityController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(9.h)),
                                    )),
                              ),
                              // ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Value :",
                                style: FastaTextStyle.subtitle3.copyWith(
                                    fontWeight: FastaFontWeight.semiBold),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              SizedBox(
                                width: 131.w,
                                child: TextFormField(
                                    controller: valueController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(9.h)),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Weight :",
                                style: FastaTextStyle.subtitle3.copyWith(
                                    fontWeight: FastaFontWeight.semiBold),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              SizedBox(
                                width: 131.w,
                                child: TextFormField(
                                    controller: weightController,
                                    decoration: InputDecoration(
                                      hintText: 'Weight(KG)',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(9.h)),
                                    )),
                              ),
                              // ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "State :",
                                style: FastaTextStyle.subtitle3.copyWith(
                                    fontWeight: FastaFontWeight.semiBold),
                              ),
                              // Flexible(
                              //   flex: 6,
                              SizedBox(
                                height: 30.h,
                              ),
                              // ),
                              SizedBox(
                                width: 131.w,
                                child: DropdownButton<String>(
                                    value: dropDownValue,
                                    isDense: true,
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(
                                          child: Text('Fragile'),
                                          value: 'Fragile'),
                                      DropdownMenuItem(
                                          child: Text('NonFragile'),
                                          value: 'NonFragile')
                                    ],
                                    onChanged: (value) {
                                      dropDownValue = value!;
                                      setState(() {});
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: Text(
                        "Description :",
                        style: FastaTextStyle.subtitle3
                            .copyWith(fontWeight: FastaFontWeight.semiBold),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: TextFormField(
                          controller: descriptionController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9.h)),
                          )),
                    ),
                    SizedBox(
                      height: 55.h,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await pickImage();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 23.w),
                        padding: EdgeInsets.symmetric(vertical: 40.h),
                        height: 254.h,
                        width: 264.w,
                        decoration: BoxDecoration(
                            color: FastaColors.primary2,
                            border: Border.all(color: FastaColors.grey7),
                            borderRadius: BorderRadius.circular(20.h)),
                        child: (itemImage == null)
                            ? Stack(children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset('assets/cloud.png')),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 30.5.h,
                                    width: 119.w,
                                    decoration: BoxDecoration(
                                        color: FastaColors.primary,
                                        borderRadius:
                                            BorderRadius.circular(9.h)),
                                    child: Center(
                                      child: Text(
                                        'Choose a file',
                                        style: FastaTextStyle.softSubtitle
                                            .copyWith(
                                                fontWeight:
                                                    FastaFontWeight.semiBold,
                                                color: FastaColors.primary2),
                                      ),
                                    ),
                                  ),
                                )
                              ])
                            : Image(
                                image: itemImage!,
                                fit: BoxFit.cover,
                                height: 254.h,
                                width: 264.w,
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 55.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 49.h,
            ),
            MultiBlocListener(
              listeners: [
                BlocListener<ShipmentBloc, ShipmentState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      currentLocation: (currentPosition, errorMessage) {
                        _currentPosition = currentPosition;
                      },
                      currentAddress: (currentAddress, errorMessage) {
                        _currentAddress = currentAddress;

                        _startAddress = currentAddress;
                      },
                      calculatedDistance: (distance) {
                        // _placeDistance = distance;
                        // arg.putIfAbsent(
                        //     'ItemInfoArg',
                        //     () => ItemInfoArg(
                        //         itemName: itemNameController.text,
                        //         quantity: quatityController.text,
                        //         value: valueController.text,
                        //         weight: weightController.text,
                        //         state: stateController.text,
                        //         description: descriptionController.text,
                        //         image: itemPath!));
                        // context.read<ShipmentHandlerBloc>().add(
                        //     ShipmentHandlerEvent.createShipment(
                        //         arg: CreateShipmentArg.fromModels(
                        //             arg['aboutGoods'],
                        //             arg['VechicleType'],
                        //             arg['SendersInfoArg'],
                        //             arg['ItemInfoArg'],
                        //             'emma1obiechina@gmail.com')));
                      },
                    );
                  },
                ),
                BlocListener<ShipmentHandlerBloc, ShipmentHandlerState>(
                  listener: (context, state) async {
                    if (state.status == AppState.failed) {
                      buttonerror();
                      Notify.error(context, state.errorMessage);
                    } else if (state.status == AppState.loading) {
                      btnController.start();
                    } else if (state.status == AppState.success) {
                      await buttonsucces();
                      Navigator.pushNamedAndRemoveUntil(context,
                          PaymentOptions.route, (route) => route.isFirst);
                    }
                  },
                ),
              ],
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return CustomButton(
                    controller: btnController,
                    onPressed: () async {
                      // context.read<ShipmentBloc>().add(ShipmentEvent.setMarkers(
                      //     startAddress: 'city gate abuja',
                      //     destinationAddress: 'Aco Estate, Abuja',
                      //     currentPosition: _currentPosition,
                      //     currentAddress: _currentAddress));
                      if (itemNameController.text.isNotEmpty &&
                              quatityController.text.isNotEmpty &&
                              valueController.text.isNotEmpty &&
                              weightController.text.isNotEmpty &&
                              descriptionController.text.isNotEmpty
                          // &&
                          // itemPath != null
                          ) {
                        btnController.start();
                        arg.remove('ItemInfoArg');
                        arg.putIfAbsent(
                            'ItemInfoArg',
                            () => ItemInfoArg(
                                  itemName: itemNameController.text,
                                  quantity: quatityController.text,
                                  value: valueController.text,
                                  weight: weightController.text,
                                  state: stateController.text,
                                  description: descriptionController.text,
                                  image: 'https://google.com',
                                  // image: itemPath??'https://google.com',
                                ));
                        context
                            .read<ShipmentHandlerBloc>()
                            .add(ShipmentHandlerEvent.createShipment(
                                arg: CreateShipmentArg.fromModels(
                              arg['aboutGoods'],
                              arg['VechicleType'],
                              arg['SendersInfoArg'],
                              arg['ItemInfoArg'],
                            )));
                        // context.read<ShipmentHandlerBloc>().add(ShipmentHandlerEvent.deliveryCost(DeliveryCostArg(fromLat: , fromLng: '', toLng: '', toLnt: '', priority: null, vehicleType: '')));
                        // context.read<ShipmentBloc>().add(ShipmentEvent.setMarkers(
                        //     startAddress: (arg['SendersInfoArg'] as SendersInfoArg)
                        //         .pickupAddress,
                        //     destinationAddress:
                        //         (arg['SendersInfoArg'] as SendersInfoArg)
                        //             .deliveryPoint,
                        //     currentPosition: _currentPosition,
                        //     currentAddress: _currentAddress));
                      }
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 112.h,
            ),
          ],
        ),
      ),
    );
  }
}
