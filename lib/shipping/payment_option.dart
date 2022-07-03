import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
// import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/shipping/rider_scan.dart';
import 'package:fasta/shipping/widgets/elevated_card_small.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/cubit/wallet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentOptions extends StatefulWidget {
  static const String route = '/PaymentOptions';
  const PaymentOptions({Key? key}) : super(key: key);

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  bool isWalletSelected = false;

  bool isCardSelected = false;
  @override
  Widget build(BuildContext context) {
    return MapView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.4.screenHeight,
            child: DraggableScrollableSheet(
                minChildSize: 0.12,
                // expand: false,
                initialChildSize: 0.85,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                      decoration: BoxDecoration(
                          color: FastaColors.primary2,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.h),
                              topRight: Radius.circular(30.h))),
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 6.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: FastaColors.grey5,
                                  borderRadius: BorderRadius.circular(100.h),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                width: 48.h,
                                height: 48.h,
                                child: Image.asset('assets/gift-box.png'),
                                decoration: const BoxDecoration(
                                    color: FastaColors.lightBlue,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              BlocBuilder<ShipmentHandlerBloc, ShipmentHandlerState>(
                                builder: (context, state) {
                                  return Text(
                                    'NGN ${state.deliveryEstimate}',
                                    style: FastaTextStyle.headline1,
                                  );
                                },
                              ),
                              Text(
                                '35 Mins to arrival, 1.5km.',
                                style: FastaTextStyle.subtitle1
                                    .copyWith(color: FastaColors.grey7),
                              ),
                              SizedBox(
                                height: 54.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        isCardSelected = true;
                                        isWalletSelected = false;
                                        setState(() {});
                                      },
                                      child: ElevatedCardSmall(
                                        type: 'Card',
                                        image: 'credit-card',
                                        isSelected: isCardSelected,
                                      )),
                                  SizedBox(
                                    height: 28.w,
                                  ),
                                  GestureDetector(
                                      onTap: () async {
                                        isCardSelected = false;
                                        isWalletSelected = true;
                                        setState(() {});
                                        await Future.delayed(
                                            Duration(seconds: 2));
                                        context
                                            .read<WalletCubit>()
                                            .deductWallet(700);
                                        Navigator.pushNamed(
                                            context, RiderScan.route);
                                      },
                                      child: ElevatedCardSmall(
                                        type: 'Wallet',
                                        image: 'wallet',
                                        isSelected: isWalletSelected,
                                      )),
                                ],
                              )
                            ],
                          )
                        ],
                      ));
                }),
          ),
        )
      ],
    );
  }
}
