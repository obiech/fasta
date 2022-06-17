import 'package:fasta/dashboard/dashboard.dart';
import 'package:fasta/nav/cards_screen.dart';
import 'package:fasta/rider_app/dashboard/dashboard.dart';
import 'package:fasta/rider_app/orders/orders.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/wallet/wallet.dart';
import 'package:flutter/material.dart';

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
    CardsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    pageIndex = widget.index ?? pageIndex;
  }

  static const List<String> _images = ['dashboard', 'send', 'wallet', 'cards'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ));
  }
}
