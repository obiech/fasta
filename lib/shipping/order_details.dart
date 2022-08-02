import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fasta/api_client/infrastruture/dio_helper.dart';
import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/constants.dart';
import 'package:fasta/global_widgets/cards/elevated_card_responsive.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/shipping/application/map/shipment_bloc.dart';
import 'package:fasta/shipping/item_info.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math';

import 'package:google_api_headers/google_api_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:maps_places_autocomplete/maps_places_autocomplete.dart';
import 'package:maps_places_autocomplete/model/suggestion.dart';

import '../profile/application/bloc/profile_bloc.dart';

class SenderInfo extends StatefulWidget {
  static const String route = '/SenderInfo';
  const SenderInfo({Key? key}) : super(key: key);

  @override
  State<SenderInfo> createState() => _SenderInfoState();
}

class _SenderInfoState extends State<SenderInfo>
    with RoundedLoadingButtonMixin {
  final TextEditingController sendersPhoneNumber = TextEditingController();
  final TextEditingController pickupAddress = TextEditingController();
  final TextEditingController sendersName = TextEditingController();
  final TextEditingController deliveryPoint = TextEditingController();
  final TextEditingController receiversName = TextEditingController();
  final TextEditingController recieversPhoneNumber = TextEditingController();
  bool switchvaule = true;
  late Map<String, dynamic> arg;
  String? pickUpAddressMap;
  String? deliveryAddressMap;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arg = (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>);
  }

  @override
  void initState() {
    super.initState();
    context.read<ShipmentBloc>().add(const ShipmentEvent.getCurrentLocation());
  }

  Future<String?> _onPickContacts() async {
// Request contact permission
    if (await FlutterContacts.requestPermission()) {
      final contact = await FlutterContacts.openExternalPick();
      return contact?.phones.first.normalizedNumber;
    }
    Notify.error(context, 'Permission Not granted');
    return null;
  }

  final homeScaffoldKey = GlobalKey<ScaffoldState>();
  final searchScaffoldKey = GlobalKey<ScaffoldState>();

  void onError(PlacesAutocompleteResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(response.errorMessage!)),
    );
  }

  Future getCurrentLoation() async {
    final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

        // pickupAddress.text = position.
  }

  Future<void> _handlePressButton() async {
    // show input autocomplete with selected mode
    // then get the Prediction selected
    Prediction? p = await PlacesAutocomplete.show(
      context: context,
      apiKey: 'AIzaSyA-lqYHLBnNE3-I2CaCjgTgQE0BqEzSEWM',
      onError: onError,
      mode: Mode.overlay,
      language: "fr",
      decoration: InputDecoration(
        hintText: 'Search',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      components: [Component(Component.country, "fr")],
    );

    displayPrediction(p, context);
  }

  Future<void> displayPrediction(Prediction? p, BuildContext context) async {
    if (p != null) {
      // get detail (lat/lng)
      GoogleMapsPlaces _places = GoogleMapsPlaces(
        apiKey: 'AIzaSyA-lqYHLBnNE3-I2CaCjgTgQE0BqEzSEWM',
        apiHeaders: await const GoogleApiHeaders().getHeaders(),
      );
      PlacesDetailsResponse detail =
          await _places.getDetailsByPlaceId(p.placeId!);
      final lat = detail.result.geometry!.location.lat;
      final lng = detail.result.geometry!.location.lng;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("${p.description} - $lat/$lng")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: FastaColors.primary2,
      appBar: AppBarWithBackButton(
        onPressed: () => Navigator.pop(context),
        iconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 27.w,
        ),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Details",
                  style: FastaTextStyle.headline1,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Fill in your details',
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
                            "Sender's info",
                            style: FastaTextStyle.hardLabel,
                          ),
                          decoration: BoxDecoration(
                              color: FastaColors.lightBlue,
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
                            "Pickup Address :",
                            style: FastaTextStyle.subtitle3
                                .copyWith(fontWeight: FastaFontWeight.semiBold),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: MapsPlacesAutocomplete(
                              inputDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9.h)),
                              ),
                              onSuggestionClick: (place) {
                                pickUpAddressMap =
                                    ' ${place.streetNumber??''} ${place.street??''} ${place.city} ${place.state} ${place.country??''}';
                              },
                              componentCountry:'NG',
                              mapsApiKey: 'AIzaSyA-lqYHLBnNE3-I2CaCjgTgQE0BqEzSEWM',
                              buildItem: (Suggestion suggestion, int index) {
                                // if (index ==0 ){
                                //   return ElevatedCardResponsive(
                                //   width: 1.screenWidth,
                                //   responsiveHeight: true,
                                //   isSelected: false,
                                //     children: [Expanded(child: Text('suggestion.description'))]);
                                // }
                                return ElevatedCardResponsive(
                                  width: 1.screenWidth,
                                  responsiveHeight: true,
                                  isSelected: false,
                                    children: [Expanded(child: Text(suggestion.description))]);
                              }),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 23.w),
                        //   child: TextFormField(
                        //       controller: pickupAddress..text = '${state.user?.city??''}, ${state.user?.state??''}',
                        //       decoration: InputDecoration(
                        //         border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(9.h)),
                        //       )),
                        // ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Text(
                            "Senders Name :",
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
                              controller: sendersName
                                ..text = state.user?.fullName ?? '',
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9.h)),
                              )),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Text(
                            "Senders Phone Number :",
                            style: FastaTextStyle.subtitle3
                                .copyWith(fontWeight: FastaFontWeight.semiBold),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextFormField(
                                    controller: sendersPhoneNumber
                                      ..text = state.user?.phoneNumber ?? '',
                                    keyboardType:
                                        const TextInputType.numberWithOptions(),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(9.h)),
                                    )),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final res = await _onPickContacts();
                                  if (res != null) {
                                    sendersPhoneNumber.text = res;
                                  }
                                  setState(() {});
                                },
                                child: Container(
                                  height: 36.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: FastaColors.primary,
                                      borderRadius: BorderRadius.circular(9.h)),
                                  child: Center(
                                      child: Icon(
                                    Icons.person_pin,
                                    size: 20.h,
                                    color: FastaColors.primary2,
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 45.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 23.w),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 34.h,
                          decoration: BoxDecoration(
                              color: FastaColors.lightBlue,
                              borderRadius: BorderRadius.circular(8.h)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.alarm,
                                color: FastaColors.primary,
                                size: 20.h,
                              ),
                              SizedBox(
                                width: 9.w,
                              ),
                              Expanded(
                                  flex: 8,
                                  child: Text(
                                    'Pickup time',
                                    style: FastaTextStyle.subtitleHard,
                                  )),
                              Expanded(
                                child: DropdownButton<String>(
                                    value: 'Now',
                                    isDense: true,
                                    isExpanded: true,
                                    items: const [
                                      DropdownMenuItem(
                                        child: Text('Now'),
                                        value: 'Now',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('30'),
                                        value: '30',
                                      ),
                                      DropdownMenuItem(child: Text('1')),
                                      DropdownMenuItem(child: Text('2')),
                                      DropdownMenuItem(child: Text('3')),
                                    ],
                                    onChanged: (_) {}),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Is this a priority delivery ?',
                                style: FastaTextStyle.subtitleHard
                                    .copyWith(color: FastaColors.alert),
                              ),
                              Center(
                                  child: Switch(
                                      value: switchvaule,
                                      onChanged: (_) {
                                        switchvaule = !switchvaule;
                                        setState(() {});
                                      }))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Text(
                            "Delivery Point :",
                            style: FastaTextStyle.subtitle3
                                .copyWith(fontWeight: FastaFontWeight.semiBold),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: MapsPlacesAutocomplete(
                              inputDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9.h)),
                              ),
                              onSuggestionClick: (place) {
                                deliveryAddressMap =
                                    ' ${place.streetNumber??''} ${place.street??''} ${place.city} ${place.state} ${place.country??''}';
                              },
                              componentCountry: 'NG',
                              mapsApiKey: 'AIzaSyA-lqYHLBnNE3-I2CaCjgTgQE0BqEzSEWM',
                              buildItem: (Suggestion suggestion, int index) {
                                return ElevatedCardResponsive(
                                  width: 1.screenWidth,
                                  responsiveHeight: true,
                                  isSelected: false,
                                    children: [Expanded(child: Text(suggestion.description))]);
                              }),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Text(
                            "Receiver's Name :",
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
                              controller: receiversName,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9.h)),
                              )),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Text(
                            "Reciever's Phone Number :",
                            style: FastaTextStyle.subtitle3
                                .copyWith(fontWeight: FastaFontWeight.semiBold),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextFormField(
                                    controller: recieversPhoneNumber,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(9.h)),
                                    )),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final res = await _onPickContacts();
                                  if (res != null) {
                                    recieversPhoneNumber.text = res;
                                  }
                                  setState(() {});
                                },
                                child: Container(
                                  height: 36.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: FastaColors.primary,
                                      borderRadius: BorderRadius.circular(9.h)),
                                  child: Center(
                                      child: Icon(
                                    Icons.person_pin,
                                    size: 20.h,
                                    color: FastaColors.primary2,
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 69.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 84.h,
                ),
                CustomButton(
                  controller: btnController,
                  onPressed: () async {
                    if (sendersName.text.isNotEmpty &&
                        sendersPhoneNumber.text.isNotEmpty &&
                        (deliveryAddressMap?.isNotEmpty??false )&&
                        receiversName.text.isNotEmpty &&
                        recieversPhoneNumber.text.isNotEmpty) {
                      arg.putIfAbsent(
                          'SendersInfoArg',
                          () => SendersInfoArg(
                              pickupAddress: pickUpAddressMap!,
                              sendersName: sendersName.text,
                              sendersPhonNumber: sendersPhoneNumber.text,
                              pickUpTime: 'now',
                              priority: '1',
                              deliveryPoint: deliveryAddressMap!,
                              receiversName: receiversName.text,
                              receiversPhoneNumber: recieversPhoneNumber.text));
                      if (!switchvaule) {
                        Navigator.pushNamed(context, ItemInfo.route,
                            arguments: arg);
                        
                      } else {
                        _showMyDialog(context, arg);
                      }
                    } else {
                      Notify.error(context, 'Missing Reqired Field');
                    }
                  },
                ),
                SizedBox(
                  height: 112.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(
    BuildContext context, Map<String, dynamic> arg) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
        titleTextStyle: FastaTextStyle.headline6
            .copyWith(fontSize: 25.f, color: FastaColors.alert),
        titlePadding: EdgeInsets.only(top: 38.h),
        title: const Center(child: Text('Note:')),
        content: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 8.h),
          child: ListBody(
            children: <Widget>[
              Text(
                _content,
                textAlign: TextAlign.center,
                style: FastaTextStyle.hardLabel2
                    .copyWith(fontWeight: FastaFontWeight.regular),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, ItemInfo.route,
                      arguments: arg);
                },
                child: Container(
                  width: 202.w,
                  height: 55.h,
                  child: Center(
                    child: Text(
                      'I am okay with it.',
                      style: FastaTextStyle.hardLabel
                          .copyWith(color: FastaColors.primary2),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.h),
                      color: FastaColors.primary),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 116.w,
                  height: 55.h,
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: FastaTextStyle.hardLabel,
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(13.h),
                      color: FastaColors.primary2),
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}

const String _content =
    '''Priority delivery means your Order has preeminence over all other Orders, it will be delivered first and most swiftly. This will also incur additional charges. ''';
