import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/inter_app_widgets/order_preview.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/rider_app/orders/new_order.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/order_receipt.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersViewRider extends StatefulWidget {
  static const String route = '/OrdersViewRider';
  const OrdersViewRider({Key? key}) : super(key: key);

  @override
  State<OrdersViewRider> createState() => _OrdersViewRiderState();
}

class _OrdersViewRiderState extends State<OrdersViewRider> {
  @override
  void initState() {
    super.initState();
    context
        .read<ShipmentHandlerBloc>()
        .add(const ShipmentHandlerEvent.getAllDeliveriesPendingInvitations());
  }

  @override
  Widget build(BuildContext context) {
  bool isTap = false;

    return RefreshIndicator(
      onRefresh: () async => context
          .read<ShipmentHandlerBloc>()
          .add(const ShipmentHandlerEvent.getAllDeliveriesPendingInvitations()),
      child: CustomScaffold(
        type: AppBarType.profile,
        iconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orders',
              style: FastaTextStyle.headline1,
            ),
            SizedBox(
              height: 22.h,
            ),
            BlocListener<ShipmentHandlerBloc, ShipmentHandlerState>(
              listenWhen: (previous, current) => isTap,
              listener: (context, state) {
                if (state.status == AppState.success) {
                  // Navigator.pushNamed(context, NewOrder.route,
                  //     arguments: state.delivery);
                } else if (state.status == AppState.success) {}
              },
              child: BlocBuilder<ShipmentHandlerBloc, ShipmentHandlerState>(
                builder: (context, state) {
                  if (state.allDelivery?.isEmpty??false){
                    return const Center(child: Text('No Order Yet'),);
                  }
                  return Column(
                      children: List.generate(state.allDelivery?.length ?? 0,
                          (index) {
                    return GestureDetector(
                      onTap: () {
                        if (state.allDelivery![index].status
                                .trim()
                                .toUpperCase() ==      
                            'accepted'.toUpperCase()) {
                          isTap = true;
                         context.read<ShipmentHandlerBloc>().add(
                              ShipmentHandlerEvent.getADelivery(
                                  state.allDelivery![index].userId.toString(),
                                  Owner.rider));
                                  Navigator.pushNamed(context, NewOrder.route,
                      arguments: state.delivery);
                        } else if (state.allDelivery![index].status
                                .trim()
                                .toUpperCase() ==
                            'driver-completed'.toUpperCase()||state.allDelivery![index].status
                                .trim()
                                .toUpperCase() ==  
                            'completed'.toUpperCase()){
                              context.read<ShipmentHandlerBloc>().add(
                              ShipmentHandlerEvent.getADelivery(
                                  state.allDelivery![index].userId.toString(),
                                  Owner.rider));
                          Navigator.pushNamed(context, OrderReceipt.route,
                              arguments: state.allDelivery![index]);
                        }
                      },
                      child: OrderPreview(
                        name: state.allDelivery![index].status,
                        to: state.allDelivery![index].toAddress,
                        from: state.allDelivery![index].fromAddress,
                        distance: state.allDelivery![index].distance,
                        deliveryId: state.allDelivery![index].id,
                        owner: Owner.rider,
                      ),
                    );
                  }));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
