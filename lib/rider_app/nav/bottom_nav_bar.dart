import 'package:fasta/card/home.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/dashboard/dashboard.dart';
import 'package:fasta/inter_app_widgets/order_preview.dart';
import 'package:fasta/nav/cards_screen.dart';
import 'package:fasta/rider_app/dashboard/dashboard.dart';
import 'package:fasta/rider_app/orders/orders.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/shipping/order_receipt.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarRider extends StatefulWidget {
  final int? index;
  static const String route = '/BottomNavBarRider';
  const BottomNavBarRider({Key? key, this.index}) : super(key: key);

  @override
  State<BottomNavBarRider> createState() => _BottomNavBarRiderState();
}

class _BottomNavBarRiderState extends State<BottomNavBarRider> {
  int pageIndex = 0;

  static const List<Widget> _pages = [
    DashBoardViewRider(),
    OrdersViewRider(),
    WalletView(),
    CardView(),
  ];

  @override
  void initState() {
    super.initState();
    pageIndex = widget.index ?? pageIndex;
  }

  static const List<String> _images = [
    'dashboard',
    'order',
    'wallet',
    'wallet'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: _pages[pageIndex],
        bottomNavigationBar: SizedBox(
          height: 98.h,
          child: BlocListener<ShipmentHandlerBloc, ShipmentHandlerState>(
            listenWhen: (previous, current) => current.status ==AppState.success,
            listener: (context, state) {
               if (state.pendingInvitations !=  null){
              //  showMyDialog(context,state.pendingInvitations!);
            }
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/rider_' + _images[pageIndex] + '.png',
                    width: 1.screenWidth,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: GestureDetector(
                            onTap: () => setState(() {
                                  pageIndex = 0;
                                }))),
                    Expanded(
                        flex: 2,
                        child: GestureDetector(
                            onTap: () => setState(() {
                                  pageIndex = 1;
                                }))),
                    Expanded(
                        flex: 2,
                        child: GestureDetector(
                            onTap: () => setState(() {
                                  pageIndex = 2;
                                }))),
                    Expanded(
                        flex: 2,
                        child: GestureDetector(
                            onTap: () => setState(() {
                                  pageIndex = 3;
                                }))),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Future<void> showMyDialog(
    BuildContext context, DeliveryInvitation delivery) async {
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
               OrderInfo(
                            name: 'Items',
                            value: Text(delivery.items,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Order No',
                            value: Text(delivery.id.toString(),
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Weight',
                            value: Text(delivery.weight,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Pickup point',
                            value: Text(
                                delivery.form,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Item State',
                            value: Text(delivery.state,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Delivery Point',
                            value: Text(
                                delivery.to,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Payment Method',
                            value: Text(delivery.paymentMethod,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          SizedBox(height: 20.h,),
                          AcceptOrDecline(deliveryId:delivery.deliveryId.toString())
            ],
          ),
       
        ),
      );
    },
  );
}