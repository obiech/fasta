import 'package:fasta/colors/colors.dart';
import 'package:fasta/dashboard/add_interests.dart';
import 'package:fasta/dashboard/widgets/container_with_image.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_with_Avater.dart';
import 'package:fasta/nav/bottom_nav_bar.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/rider_app/dashboard/widgets/dashboard_overview.dart';
import 'package:fasta/rider_app/nav/bottom_nav_bar.dart';
import 'package:fasta/rider_app/orders/orders.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/infrastructure/scoket_io.dart';
import 'package:fasta/shipping/ongoing_orders.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/cubit/wallet_cubit.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoardViewRider extends StatefulWidget {
  static const String route = '/DashBoardViewRider';
  const DashBoardViewRider({Key? key}) : super(key: key);

  @override
  State<DashBoardViewRider> createState() => _DashBoardViewRiderState();
}

class _DashBoardViewRiderState extends State<DashBoardViewRider> {
  @override
  void initState() {
    super.initState();
    context
        .read<ShipmentHandlerBloc>()
        .add(const ShipmentHandlerEvent.started());
    context
        .read<ShipmentHandlerBloc>()
        .add(const ShipmentHandlerEvent.getAllDeliveriesPendingInvitations());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: FastaColors.primary2,
        appBar: AppBarWithAvater(
          onPressed: () => Navigator.pushNamed(context, ProfileView.route),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  color: FastaColors.lightBlue,
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
                    BlocBuilder<WalletCubit, WalletState>(
                      builder: (context, state) {
                        return Text(
                          'NGN ${state.amount}.00',
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
                            // ShippingSocketImpl().initialize();
                            context
                                .read<ShipmentHandlerBloc>()
                                .add(const ShipmentHandlerEvent.started());
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) {
                            //   return const BottomNavBarRider(
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
                                child: Text(
                              'Deposit',
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const BottomNavBarRider(
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
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  2,
                  (index) => Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const BottomNavBarRider(
                                  index: 1,
                                );
                              }));
                            }
                            if (index == 1) {
                              // Navigator.pushNamed(context, OrdersViewRider.route);
                            }
                          },
                          child: DashboardOverviewRider(
                            image: _data[index].image,
                            description: _data[index].description,
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  2,
                  (index) => Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              // Navigator.pushNamed(context, AddInterests.route);
                            }
                            if (index == 1) {
                              // Navigator.pushNamed(
                              //     context, TransactionHistory.route);
                            }
                          },
                          child: DashboardOverviewRider(
                            image: _data[index + 2].image,
                            description: _data[index + 2].description,
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 43.h,
            ),
            const ReferralBonus(
              color: FastaColors.lightBlue,
            ),
            SizedBox(
              height: 80.h,
            )
          ]),
        ));
  }
}

class ReferralBonus extends StatelessWidget {
  final Color color;
  const ReferralBonus({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 22.h),
            height: 157.h,
            width: 328.w,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(13.h)),
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
                      style: FastaTextStyle.subtitle3
                          .copyWith(fontWeight: FastaFontWeight.semiBold),
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
          ),
        )
      ],
    );
  }
}

class _OverviewData {
  final String image, description;

  const _OverviewData({required this.image, required this.description});
}

const List<_OverviewData> _data = [
  _OverviewData(
    image: 'assets/Frame_gift.png',
    description: 'Orders',
  ),
  _OverviewData(
    image: 'assets/frame_bike.png',
    description: 'Earn',
  ),
  _OverviewData(
    image: 'assets/Frame_love.png',
    description: 'Performance',
  ),
  _OverviewData(
    image: 'assets/Frame_circle.png',
    description: 'Report an Issue',
  ),
];
