import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/shipping/order_receipt.dart';
import 'package:fasta/shipping/trip_complete.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemTrackerView extends StatefulWidget {
  static const String route = '/ItemTrackerView';
  const ItemTrackerView({Key? key}) : super(key: key);

  @override
  State<ItemTrackerView> createState() => _ItemTrackerViewState();
}

class _ItemTrackerViewState extends State<ItemTrackerView> {
  bool isWalletSelected = false;

  bool isCardSelected = false;
  final DraggableScrollableController controller =
      DraggableScrollableController();

  double value = 0;
  @override
  Widget build(BuildContext context) {
    return MapView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.5.screenHeight,
            child: DraggableScrollableSheet(
                // expand: false,
                controller: controller,
                minChildSize: 0.1,
                initialChildSize: 0.85,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      decoration: BoxDecoration(
                          color: FastaColors.primary2,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.h),
                              topRight: Radius.circular(30.h))),
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 6.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: FastaColors.grey5,
                                  borderRadius: BorderRadius.circular(100.h),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Your item is Enroute',
                                  style: FastaTextStyle.subtitle1,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.h),
                                  color: FastaColors.grey5,
                                ),
                                child: LinearProgressIndicator(
                                  color: FastaColors.grey7,
                                  // valueColor: ,
                                  backgroundColor: FastaColors.transparent,
                                  minHeight: 8.h,
                                  value: 0.5,
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TrackerIcon(
                                      icon: Icon(Icons.place),
                                      name: 'Pickup Point'),
                                  AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    // padding: EdgeInsets.only(
                                    //     left: value * (1.screenWidth - 80.w)),
                                    child: const TrackerIcon(
                                        icon: Icon(Icons.bike_scooter),
                                        name: 'Rider'),
                                  ),
                                  TrackerIcon(
                                      icon: CircleAvatar(
                                          backgroundColor:
                                              FastaColors.transparent,
                                          radius: 11.h,
                                          backgroundImage:
                                              Image.asset('assets/2.png')
                                                  .image),
                                      name: 'You'),
                                ],
                              ),
                              SizedBox(
                                height: 34.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.animateTo(0,
                                      duration: const Duration(seconds: 1),
                                      curve: const ElasticInCurve());
                                  _showMyDialog(context);
                                },
                                child: Container(
                                  width: 48.h,
                                  height: 48.h,
                                  child: Image.asset('assets/gift-box.png'),
                                  decoration: const BoxDecoration(
                                      color: FastaColors.lightBlue,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                'NGN 500.00 - NGN 900.00',
                                style: FastaTextStyle.headline1,
                              ),
                              Text(
                                '35 Mins to arrival, 1.5km left.',
                                style: FastaTextStyle.subtitle1
                                    .copyWith(color: FastaColors.grey7),
                              ),
                              SizedBox(
                                height: 54.h,
                              ),
                            ],
                          )
                        ],
                      ));
                }),
          ),
        )
      ],
    );
  }
}

class TrackerIcon extends StatelessWidget {
  final Widget icon;
  final String name;
  const TrackerIcon({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          name,
          style: FastaTextStyle.subtitle3,
        )
      ],
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
        titleTextStyle: FastaTextStyle.headline6.copyWith(
          fontSize: 25.f,
        ),
        titlePadding: EdgeInsets.only(top: 38.h),
        title: const Center(child: Text('Trip Complete')),
        content: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 40.w,
          ),
          child: ListBody(
            children: <Widget>[
              Text(
                'was your order Fulfilled?',
                textAlign: TextAlign.center,
                style: FastaTextStyle.subtitle2,
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        ShipmentHandlerEvent.updateTripStatus(
                            id: '1', status: 'Failed');
                        Navigator.pop(context);
                        _showReportIssueDialog(context);
                      },
                      child: Container(
                        height: 55.h,
                        width: 92.w,
                        decoration: BoxDecoration(
                            color: FastaColors.primary2,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(13.h)),
                        child: Center(
                          child: Text('No', style: FastaTextStyle.hardLabel),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.read<ShipmentHandlerBloc>().add(
                            ShipmentHandlerEvent.updateTripStatus(
                                id: '1', status: 'Completed'));
                        Navigator.pushNamedAndRemoveUntil(context,
                            TripCompleted.route, (route) => route.isFirst);
                      },
                      child: Container(
                        height: 55.h,
                        width: 92.w,
                        decoration: BoxDecoration(
                            color: FastaColors.primary,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(13.h)),
                        child: Center(
                          child: Text('Yes',
                              style: FastaTextStyle.hardLabel
                                  .copyWith(color: FastaColors.primary2)),
                        ),
                      ),
                    ),
                  )
                ],
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

Future<void> _showReportIssueDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
        titleTextStyle: FastaTextStyle.headline6.copyWith(
          fontSize: 25.f,
        ),
        titlePadding: EdgeInsets.only(top: 38.h),
        title: const Center(child: Text('Report An Issue')),
        content: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 40.w,
          ),
          child: ListBody(
            children: <Widget>[
              Text(
                'Will you like to report an issue?',
                textAlign: TextAlign.center,
                style: FastaTextStyle.subtitle2,
              ),
              SizedBox(
                height: 31.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: Container(
                      height: 38.h,
                      width: 92.w,
                      decoration: BoxDecoration(
                          color: FastaColors.primary,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8.h)),
                      child: Center(
                        child: Text('Yes I Do',
                            style: FastaTextStyle.hardLabel
                                .copyWith(color: FastaColors.primary2)),
                      ),
                    ),
                  )
                ],
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
