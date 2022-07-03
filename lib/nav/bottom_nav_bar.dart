import 'package:fasta/dashboard/dashboard.dart';
import 'package:fasta/nav/cards_screen.dart';
import 'package:fasta/shipping/home.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/wallet/wallet.dart';
import 'package:flutter/material.dart';

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
