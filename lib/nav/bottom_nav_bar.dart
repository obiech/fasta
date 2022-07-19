import 'package:fasta/card/home.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/dashboard/dashboard.dart';
import 'package:fasta/nav/cards_screen.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/home.dart';
import 'package:fasta/shipping/tracker.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatefulWidget {
  final int? index;
  static const String route = '/BottomNavBar';
  const BottomNavBar({Key? key, this.index}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  static const List<Widget> _pages = [
    DashBoardView(),
    ShippingView(),
    WalletView(),
    CardView(),
  ];

  @override
  void initState() {
    super.initState();
    pageIndex = widget.index ?? pageIndex;
  }

  static const List<String> _images = ['dashboard', 'send', 'wallet', 'cards'];

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShipmentHandlerBloc, ShipmentHandlerState>(
      listenWhen: (previous, current) => current.status ==AppState.success,
      listener: (context, state) {
        if (state.deliverySummary?.any((element) =>
                element.status.trim().toUpperCase() ==
                'driver-completed'.toUpperCase()) ??
            false){
              
               showMyDialog(context,state.deliverySummary!.firstWhere((element) =>element.status.trim().toUpperCase() ==
                'driver-completed'.toUpperCase()));
            }
      },
      child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: _pages[pageIndex],
          bottomNavigationBar: SizedBox(
            height: 98.h,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/2.0x/nav_bar_' + _images[pageIndex] + '.png',
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
          )),
    );
  }
}
