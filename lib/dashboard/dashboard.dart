import 'dart:developer';

import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/dashboard/add_interests.dart';
import 'package:fasta/dashboard/widgets/container_with_image.dart';
import 'package:fasta/extension/string.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_with_Avater.dart';
import 'package:fasta/nav/bottom_nav_bar.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/infrastructure/scoket_io.dart';
import 'package:fasta/shipping/ongoing_orders.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/cubit/wallet_cubit.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoardView extends StatefulWidget {
  static const String route = '/DashBoardView';
  const DashBoardView({Key? key}) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  void initState() {
    super.initState();
    context.read<PaystackBloc>().add(const PaystackEvent.balance());
    context
        .read<ShipmentHandlerBloc>()
        .add(const ShipmentHandlerEvent.started());
    context.read<ShippingSocketImpl>().onConnectEvent();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
       context.read<PaystackBloc>().add(const PaystackEvent.balance());
        await Future.delayed(const Duration(seconds: 3));
      },
      child: Scaffold(
          extendBody: true,
          backgroundColor: FastaColors.primary2,
          appBar: AppBarWithAvater(
            onPressed: () => Navigator.pushNamed(context, ProfileView.route),
            IconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    color: FastaColors.lightOrange,
                    borderRadius: BorderRadius.circular(20.h)),
                height: 124.h,
                width: 328.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 23.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 28.h,
                      ),
                      Text(
                        'Wallet Balance',
                        style: FastaTextStyle.softSubtitle,
                      ),
                      BlocBuilder<PaystackBloc, PaystackState>(
                        builder: (context, state) {
                          // log(state.balance!.amount.toString());
                          log(state.balance?.amount ?? '0.00');
                          return Text(
                            '${state.balance?.amount ?? 0.00}'.toAmount,
                            style: FastaTextStyle.headline6,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const BottomNavBar(
                                  index: 2,
                                );
                              }));
                            },
                            child: Container(
                              height: 27.h,
                              width: 94.w,
                              decoration: BoxDecoration(
                                  color: FastaColors.primary2,
                                  borderRadius: BorderRadius.circular(7.h)),
                              child: Center(
                                  child: Text(
                                'Fund Wallet',
                                style: FastaTextStyle.subtitle3.copyWith(
                                    fontWeight: FastaFontWeight.semiBold),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          GestureDetector(
                            onTap: () {
                              final a = ShippingSocketImpl();
                              a.initialize();
                              // await
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) {
                              //   return const BottomNavBar(
                              //     index: 2,
                              //   );
                              // }));
                            },
                            child: Container(
                              height: 27.h,
                              width: 94.w,
                              decoration: BoxDecoration(
                                  color: FastaColors.primary2,
                                  borderRadius: BorderRadius.circular(7.h)),
                              child: Center(
                                  child: Text('Withdraw',
                                      style: FastaTextStyle.subtitle3.copyWith(
                                          fontWeight: FastaFontWeight.semiBold))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45.h,
                    width: 212.w,
                    decoration: BoxDecoration(
                        color: FastaColors.grey5,
                        borderRadius: BorderRadius.circular(13.h)),
                    child: Center(
                      child: Text('Input Tracking ID',
                          style: FastaTextStyle.softSubtitle
                              .copyWith(fontWeight: FastaFontWeight.semiBold)),
                    ),
                  ),
                  Container(
                    height: 44.h,
                    width: 103.w,
                    decoration: BoxDecoration(
                        color: FastaColors.primary,
                        borderRadius: BorderRadius.circular(13.h)),
                    child: Center(
                      child: Text('Track',
                          style: FastaTextStyle.hardLabel
                              .copyWith(color: FastaColors.primary2)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 29.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    2,
                    (index) => GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const BottomNavBar(
                                  index: 1,
                                );
                              }));
                            }
                            if (index == 1) {
                              Navigator.pushNamed(context, OngoingOrders.route);
                            }
                          },
                          child: DashboardOverview(
                              image: _data[index].image,
                              color: _data[index].color,
                              backgroundImage: _data[index].backgroundImage,
                              description: _data[index].description,
                              item: _data[index].item),
                        )),
              ),
              SizedBox(
                height: 31.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    2,
                    (index) => GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.pushNamed(context, AddInterests.route);
                            }
                            if (index == 1) {
                              Navigator.pushNamed(
                                  context, TransactionHistory.route);
                            }
                          },
                          child: DashboardOverview(
                              image: _data[index + 2].image,
                              color: _data[index + 2].color,
                              backgroundImage: _data[index + 2].backgroundImage,
                              description: _data[index + 2].description,
                              item: _data[index + 2].item),
                        )),
              ),
              Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.w, vertical: 22.h),
                      height: 157.h,
                      width: 328.w,
                      decoration: BoxDecoration(
                          color: FastaColors.lightBlue,
                          borderRadius: BorderRadius.circular(13.h)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get 50% bouns',
                            style: FastaTextStyle.hardLabel2,
                          ),
                          Text(
                            'Refer a friend today and get \n50% discount on all your \nshipments',
                            style: FastaTextStyle.subtitle3
                                .copyWith(color: FastaColors.grey7),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          Container(
                            height: 27.h,
                            width: 74.65.w,
                            decoration: BoxDecoration(
                                color: FastaColors.primary2,
                                borderRadius: BorderRadius.circular(9.h)),
                            child: Center(
                              child: Text(
                                'Get a Link',
                                style: FastaTextStyle.subtitle3.copyWith(
                                    fontWeight: FastaFontWeight.semiBold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/happy.png',
                      fit: BoxFit.cover,
                      height: 208.h,
                      // bundle: DefaultAssetBundle.of(context)
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 80.h,
              )
            ]),
          )),
    );
  }
}

class _Item {
  final String image, backgroundImage, description, item;
  final Color color;

  const _Item(
      {required this.image,
      required this.backgroundImage,
      required this.description,
      required this.color,
      required this.item});
}

const List<_Item> _data = [
  _Item(
      image: 'assets/Frame_gift.png',
      backgroundImage: 'assets/2.0x/gift.png',
      description: 'Send items to friends, \nfamily and customers ',
      color: FastaColors.lightOrange,
      item: 'Ship an Item'),
  _Item(
      image: 'assets/frame_bike.png',
      color: FastaColors.lightBlue,
      backgroundImage: 'assets/2.0x/delivery-man.png',
      description: 'See the status of your \nongoing deliveries ',
      item: 'Ongoing orders'),
  _Item(
      color: FastaColors.grey6,
      image: 'assets/Frame_love.png',
      backgroundImage: 'assets/2.0x/interest.png',
      description: 'Let us know what \nmakes you tick ',
      item: 'Add Interest'),
  _Item(
      image: 'assets/Frame_circle.png',
      color: FastaColors.lightOrange,
      backgroundImage: 'assets/2.0x/money.png',
      description: 'See all your recent, \ntransactions',
      item: 'Transactions'),
];
