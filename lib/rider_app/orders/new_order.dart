import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/inter_app_widgets/order_preview.dart';
import 'package:fasta/rider_app/orders/complete_order.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/infrastructure/repo.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/shipping/rider_profile.dart';
import 'package:fasta/shipping/widgets/call_icon.dart';
import 'package:fasta/shipping/widgets/chat_icon.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewOrder extends StatefulWidget {
  static const route = '/NewOrder';
  const NewOrder({Key? key}) : super(key: key);

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShipmentHandlerBloc, ShipmentHandlerState>(
      builder: (context, state) {
        return MapView(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 0.6.screenHeight,
                child: DraggableScrollableSheet(
                    minChildSize: 0.09,
                    initialChildSize: 0.85,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          decoration: BoxDecoration(
                              color: FastaColors.primary2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.h),
                                  topRight: Radius.circular(30.h))),
                          child:
                              ListView(controller: scrollController, children: [
                            BlocConsumer<ShipmentHandlerBloc,
                                ShipmentHandlerState>(
                              listener: (context, state) {
                                // TODO: implement listener
                              },
                              builder: (context, state) {
                                if (state.delivery != null) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        'New Order',
                                        style: FastaTextStyle.headline4
                                            .copyWith(
                                                fontWeight:
                                                    FastaFontWeight.semiBold),
                                      ),
                                      SizedBox(
                                        height: 11.h,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.place,
                                            color: FastaColors.orange,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Expanded(
                                            child: Text(
                                              '''
    ${state.delivery!.deliverySummary.toAddress}
                     --- 
    ${state.delivery!.deliverySummary.fromAddress}''',
                                              style: FastaTextStyle.subtitle2,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 31.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, RiderProfile.route,
                                                  arguments:
                                                      state.delivery!.user);
                                            },
                                            child: CircleAvatar(
                                              radius: 34.h,
                                              backgroundColor:
                                                  FastaColors.lightOrange,
                                              backgroundImage: (state
                                                          .delivery!
                                                          .user
                                                          .avatarUrl
                                                          ?.isEmpty ??
                                                      false)
                                                  ? Image.asset('assets/2.png')
                                                      .image
                                                  : Image.network(state
                                                          .delivery!
                                                          .user
                                                          .avatarUrl!)
                                                      .image,
                                            ),
                                          ),
                                          ChatIcon(state.delivery!.user),
                                          const CallIcon(
                                            iconColor: FastaColors.grey5,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 31.h,
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
                                                style:
                                                    FastaTextStyle.hardLabel2,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            state
                                                .delivery!.deliverySummary.cost,
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
                                            // Navigator.popUntil(
                                            //     context, (route) => route.isFirst);
                                          },
                                          child: (state.delivery!
                                                      .deliverySummary.status ==
                                                  'pending')
                                              ? AcceptOrDecline(
                                                  deliveryId: state.delivery!
                                                      .deliverySummary.id)
                                              : Align(
                                                  alignment: Alignment.center,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          CompleteOrder.route);
                                                    },
                                                    child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 15.w),
                                                        decoration: BoxDecoration(
                                                            color: FastaColors
                                                                .primary2,
                                                            border: Border.all(
                                                                color: FastaColors
                                                                    .primary),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    7.h)),
                                                        height: 27.h,
                                                        width: 100.w,
                                                        child: Center(
                                                            child: Text('Confirm',
                                                                style: FastaTextStyle
                                                                    .subtitleHard
                                                                    .copyWith(
                                                                        color: FastaColors.primary)))),
                                                  ),
                                                )),
                                      SizedBox(
                                        height: 36.h,
                                      ),
                                    ],
                                  );
                                }
                                return const CircularProgressIndicator();
                              },
                            )
                          ]));
                    }),
              ),
            )
          ],
        );
      },
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
