import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/inter_app_widgets/order_preview.dart';
import 'package:fasta/inter_app_widgets/tracker_widget.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/shipping/rider_profile.dart';
import 'package:fasta/shipping/widgets/call_icon.dart';
import 'package:fasta/shipping/widgets/chat_icon.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompleteOrder extends StatefulWidget {
  static const route = '/CompleteOrder';
  const CompleteOrder({Key? key}) : super(key: key);

  @override
  State<CompleteOrder> createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteOrder>
    with RoundedLoadingButtonMixin {
  @override
  Widget build(BuildContext context) {
    return MapView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.6.screenHeight,
            child: DraggableScrollableSheet(
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
                          listener: (context, state) async {
                            if (state.status == AppState.loading) {
                              btnController.start();
                            } else if (state.status == AppState.failed) {
                              await buttonerror();
                            } else if (state.status == AppState.success) {
                              await buttonsucces();
                              Navigator.popUntil(
                                  context, (route) => route.isFirst);
                            }
                          },
                          builder: (context, state) {
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
                                  "You are fulfiling ${state.delivery!.user.fullName}'s Order",
                                  style: FastaTextStyle.headline4.copyWith(
                                      fontWeight: FastaFontWeight.semiBold),
                                ),
                                SizedBox(
                                  height: 11.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Order NO',
                                      style: FastaTextStyle.subtitle2,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
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
                                              state.delivery!.deliverySummary.id.toString(),
                                              style:
                                                  FastaTextStyle.hardLabel2)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 31.h,
                                ),
                                Row(
                                  children: [
                                    const TrackerIcon(),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    TrackerWidget(
                                      to: state.delivery!.deliverySummary.fromAddress,
                                      from: state.delivery!.deliverySummary.toAddress,
                                      distance:
                                          '${state.delivery!.deliverySummary.distance} km from where you are',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 41.h,
                                ),
                                CustomButton.named(
                                    controller: btnController,
                                    name: 'Order Fulfilled',
                                    onPressed: () {
                                      context.read<ShipmentHandlerBloc>().add(
                                          ShipmentHandlerEvent.finishDelivery(
                                              state.delivery!.deliverySummary.id));
                                    }),
                                SizedBox(
                                  height: 31.h,
                                ),
                              ],
                            );
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

class OrderStatus extends StatelessWidget {
  const OrderStatus({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  Color getColor(String name) {
    if (name.trim().toUpperCase() == 'accepted'.toUpperCase()) {
      return FastaColors.orange;
    } else if (name.trim().toUpperCase() == 'completed'.toUpperCase()) {
      return FastaColors.primary;
    } else if (name.trim().toUpperCase() == 'cancelled'.toUpperCase()) {
      return FastaColors.alert;
    }
    return FastaColors.primary;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
            color: getColor(name), borderRadius: BorderRadius.circular(7.h)),
        height: 27.h,
        child: Center(
            child: Text(name,
                style: FastaTextStyle.subtitleHard
                    .copyWith(color: FastaColors.primary2))));
  }
}
