import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/dashboard/dashboard.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/shipping/rider_profile.dart';
import 'package:fasta/shipping/tracker.dart';
import 'package:fasta/shipping/widgets/call_icon.dart';
import 'package:fasta/shipping/widgets/chat_icon.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArrivalTime extends StatefulWidget {
  static const route = '/ArrivalTime';
  const ArrivalTime({Key? key}) : super(key: key);

  @override
  State<ArrivalTime> createState() => _ArrivalTimeState();
}

class _ArrivalTimeState extends State<ArrivalTime> {
  @override
  Widget build(BuildContext context) {
    return MapView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.7.screenHeight,
            child: DraggableScrollableSheet(
                // expand: false,
                minChildSize: 0.09,
                initialChildSize: 0.85,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      decoration: BoxDecoration(
                          color: FastaColors.primary2,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.h),
                              topRight: Radius.circular(30.h))),
                      child: ListView(controller: scrollController, children: [
                        BlocConsumer<ShipmentHandlerBloc, ShipmentHandlerState>(
                          listener: (context, state) {
                            // TODO: implement listener
                          },
                          builder: (context, state) {
                            if (state.status == AppState.success) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      height: 6.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                        color: FastaColors.grey5,
                                        borderRadius:
                                            BorderRadius.circular(100.h),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    'Arriving in ${state.delivery!.deliverySummary.duration} mins',
                                    style: FastaTextStyle.headline4.copyWith(
                                        fontWeight: FastaFontWeight.semiBold),
                                  ),
                                  SizedBox(
                                    height: 11.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Bike type & plaque',
                                        style: FastaTextStyle.subtitle2,
                                      ),
                                      SizedBox(
                                        width: 17.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, ItemTrackerView.route);
                                        },
                                        child: Container(
                                          height: 31.h,
                                          // width: 90.w,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w),
                                          decoration: BoxDecoration(
                                              color: FastaColors.grey5,
                                              borderRadius:
                                                  BorderRadius.circular(7.h)),
                                          child: Center(
                                              child: Text(
                                                  state.delivery?.vechicle?.id
                                                          .toString() ??
                                                      "",
                                                  style: FastaTextStyle
                                                      .hardLabel2)),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 71.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, RiderProfile.route,
                                              arguments: state.delivery!.rider);
                                        },
                                        child: CircleAvatar(
                                          radius: 34.h,
                                          backgroundImage:
                                              Image.asset('assets/young.png')
                                                  .image,
                                        ),
                                      ),
                                      ChatIcon(state.delivery!.rider),
                                      const CallIcon(
                                        iconColor: FastaColors.grey5,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 71.h,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.place,
                                        color: FastaColors.primary3,
                                        size: 24.h,
                                      ),
                                      SizedBox(
                                        width: 17.w,
                                      ),
                                      BlocBuilder<ShipmentHandlerBloc,
                                              ShipmentHandlerState>(
                                          builder: ((context, state) {
                                        return RichText(
                                            text: TextSpan(
                                                text: state
                                                        .delivery!
                                                        .deliverySummary
                                                        .toAddress +
                                                    ' - ' +
                                                    state
                                                        .delivery!
                                                        .deliverySummary
                                                        .toAddress,
                                                style: FastaTextStyle.subtitle2,
                                                children: [
                                              TextSpan(
                                                  text:
                                                      '\nChange Delivery Address',
                                                  style: FastaTextStyle
                                                      .hardLabel2
                                                      .copyWith(
                                                          fontWeight:
                                                              FastaFontWeight
                                                                  .light))
                                            ]));
                                      }))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 42.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.credit_card,
                                            size: 21.h,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            'Wallet',
                                            style: FastaTextStyle.hardLabel2,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'NGN ${state.delivery!.deliverySummary.cost}',
                                        style: FastaTextStyle.hardLabel2,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 36.h,
                                  ),
                                  Container(
                                    height: 6.h,
                                    decoration: BoxDecoration(
                                      color: FastaColors.grey5,
                                      borderRadius:
                                          BorderRadius.circular(100.h),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 36.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.popUntil(
                                          context, (route) => route.isFirst);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.car_rental_rounded,
                                          size: 21.h,
                                        ),
                                        SizedBox(
                                          width: 7.w,
                                        ),
                                        Text(
                                          'Cancel order',
                                          style: FastaTextStyle.hardLabel2,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 36.h,
                                  ),
                                ],
                              );
                            } else {
                              return const Center(child: CircularProgressIndicator());
                            }
                          },
                        )
                      ]));
                }),
          ),
        )
      ],
    );
  }
}
