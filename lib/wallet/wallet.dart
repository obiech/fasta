import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_with_Avater.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/cubit/wallet_cubit.dart';
import 'package:fasta/wallet/dialogs/fund.dart';
import 'package:fasta/wallet/dialogs/withdraw.dart';
import 'package:fasta/wallet/widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletView extends StatefulWidget {
  static const String route = '/WalletView';
  const WalletView({Key? key}) : super(key: key);

  @override
  State<WalletView> createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  final TextEditingController _fundController = TextEditingController();
  final TextEditingController _withdrawController = TextEditingController();

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                  color: FastaColors.lightOrange,
                  borderRadius: BorderRadius.circular(20.h)),
              height: 124.h,
              width: 328.w,
              child: Padding(
                padding: EdgeInsets.only(top: 27.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total Balance',
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            GestureDetector(
              onTap: () {
                fundDialog(context, _fundController);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: FastaColors.primary,
                    borderRadius: BorderRadius.circular(13.h)),
                height: 55.h,
                child: Center(
                  child: Text(
                    'Fund Wallet',
                    style: FastaTextStyle.hardLabel
                        .copyWith(color: FastaColors.primary2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                withdrawDialog(context, _withdrawController);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: FastaColors.primary2,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(13.h)),
                height: 55.h,
                child: Center(
                  child: Text(
                    'Withdraw',
                    style: FastaTextStyle.hardLabel,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Text(
              'Transaction History',
              style: FastaTextStyle.hardLabel2,
            ),
            SizedBox(
              height: 28.h,
            ),
            BlocBuilder<WalletCubit, WalletState>(
              builder: (context, state) {
                if (state.histroy.isEmpty) {
                  return const Center(
                    child: Text('No Histroy Yet'),
                  );
                }
                return Column(
                  children: List.generate(state.histroy.length, (index) {
                    return NotificationMessage(
                      icon: CircleAvatar(
                          radius: 6.h,
                          backgroundImage:
                              Image.asset('assets/Ellipse.png').image),
                      content: Text(
                        state.histroy[index],
                        style: FastaTextStyle.subtitle3,
                      ),
                      timeRecieved: GestureDetector(
                          onTap: () {
                            context.read<WalletCubit>().removeHistory(index);
                            setState(() {});
                          },
                          child: Text('x', style: FastaTextStyle.subtitle3)),
                    );
                  }),
                );
              },
            ),
            SizedBox(
              height: 78.h,
            ),
          ]),
        ));
  }
}
