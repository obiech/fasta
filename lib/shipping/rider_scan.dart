import 'dart:async';

import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/arrival_time.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RiderScan extends StatefulWidget {
  static const route = '/RiderScan';
  const RiderScan({Key? key}) : super(key: key);

  @override
  State<RiderScan> createState() => _RiderScanState();
}

class _RiderScanState extends State<RiderScan> {
  double value = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(microseconds: 1), ((timer) {
      if (value >= 1) timer.cancel();
      if (mounted && timer.isActive) {
        setState(() {
          
          if(value<= 9){value += 0.0001;}
        });
      }

      // if (!timer.isActive) {
      //   Navigator.pushReplacementNamed(context, ArrivalTime.route);
      // }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MapView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.4.screenHeight,
            child: DraggableScrollableSheet(
                // expand: false,
                minChildSize: 0.12,
                initialChildSize: 0.85,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return BlocConsumer<ShipmentHandlerBloc,
                      ShipmentHandlerState>(
                    listenWhen: (previous, current) {
                      return current.newDeliveryEvent != null;
                    },
                    listener: (context, state) {
                      if (state.newDeliveryEvent!.status.trim().toUpperCase() ==
                          'accepted'.toUpperCase()) {
                        Navigator.pushReplacementNamed(
                            context, ArrivalTime.route);
                      }
                    },
                    builder: (context, state) {
                      return Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          decoration: BoxDecoration(
                              color: FastaColors.primary2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.h),
                                  topRight: Radius.circular(30.h))),
                          child:
                              ListView(controller: scrollController, children: [
                            Column(
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
                                  'Please hold on a sec',
                                  style: FastaTextStyle.softSubtitle,
                                ),
                                SizedBox(
                                  height: 9.h,
                                ),
                                Text(
                                  'We are conecting you to the nearest rider',
                                  style: FastaTextStyle.hardLabel2,
                                ),
                                SizedBox(
                                  height: 17.h,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.h)),
                                  child: LinearProgressIndicator(
                                    color: FastaColors.grey7,
                                    // valueColor: ,
                                    backgroundColor: FastaColors.grey5,
                                    minHeight: 8.h,
                                    value: value,
                                  ),
                                ),
                                SizedBox(
                                  height: 46.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 34.h,
                                      backgroundColor: FastaColors.lightOrange,
                                      backgroundImage:
                                      
                                          Image.asset('assets/2.png').image,
                                    ),
                                    SizedBox(
                                      width: 46.w,
                                    ),
                                    Container(
                                      height: 57.h,
                                      width: 57.h,
                                      child: Center(
                                        child: Icon(
                                          Icons.car_rental_rounded,
                                          size: 39.h,
                                        ),
                                      ),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: FastaColors.grey5,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ]));
                    },
                  );
                }),
          ),
        )
      ],
    );
  }
}
