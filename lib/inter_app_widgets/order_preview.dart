import 'package:fasta/colors/colors.dart';
import 'package:fasta/inter_app_widgets/tracker_widget.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPreview extends StatelessWidget {
  final String name, to, from, distance, deliveryId;
  final Owner owner;
  const OrderPreview({
    required this.name,
    required this.to,
    required this.from,
    required this.distance,
    required this.deliveryId,
    this.owner= Owner.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 173.h,
        width: 328.w,
        margin: EdgeInsets.only(bottom: 24.h),
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 19.w),
        decoration: BoxDecoration(
            color: FastaColors.grey10,
            borderRadius: BorderRadius.circular(20.h),
            border: Border.all(color: FastaColors.grey9)),
        child: Row(
          children: [
            const TrackerIcon(),
            SizedBox(
              width: 12.w,
            ),
            TrackerWidget(from: from, distance: distance, to: to, isAcceptOrDecline: (name == 'initiated' && owner == Owner.rider)),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: (name == 'initiated' && owner == Owner.rider)
                  ? AcceptOrDecline(deliveryId: deliveryId)
                  : OrderStatus(name: name),
            )
          ],
        ));
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
    } else if (name.trim().toUpperCase() == 'driver-completed'.toUpperCase()) {
      return FastaColors.green;
    } else if (name.trim().toUpperCase() == 'initiated'.toUpperCase()) {
      return FastaColors.grey9;
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
                style: FastaTextStyle.subtitleHard.copyWith(
                    color:
                        (name.trim().toUpperCase() == 'initiated'.toUpperCase())
                            ? FastaColors.primary
                            : FastaColors.primary2))));
  }
}

class AcceptOrDecline extends StatelessWidget {
  const AcceptOrDecline({
    Key? key,
    required this.deliveryId,
  }) : super(key: key);

  final String deliveryId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context
                .read<ShipmentHandlerBloc>()
                .add(ShipmentHandlerEvent.rejectDelivery(deliveryId));
          },
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  border: Border.all(color: FastaColors.primary),
                  color: FastaColors.primary2,
                  borderRadius: BorderRadius.circular(7.h)),
              height: 27.h,
              child: Center(
                  child: Text('Decline',
                      style: FastaTextStyle.subtitleHard
                          .copyWith(color: FastaColors.primary)))),
        ),
        SizedBox(
          width: 14.w,
        ),
        GestureDetector(
          onTap: () {
            context
                .read<ShipmentHandlerBloc>()
                .add(ShipmentHandlerEvent.acceptDelivery(deliveryId));
            context
        .read<ShipmentHandlerBloc>()
        .add(const ShipmentHandlerEvent.getAllDeliveriesPendingInvitations());
          },
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  color: FastaColors.primary,
                  borderRadius: BorderRadius.circular(7.h)),
              height: 27.h,
              child: Center(
                  child: Text('Accept',
                      style: FastaTextStyle.subtitleHard
                          .copyWith(color: FastaColors.primary2)))),
        ),
      ],
    );
  }
}
