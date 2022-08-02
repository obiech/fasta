
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/extension/string.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderReceipt extends StatefulWidget {
  static const String route = '/OrderReceipt';
  const OrderReceipt({Key? key}) : super(key: key);

  @override
  State<OrderReceipt> createState() => _OrderReceiptState();
}

class _OrderReceiptState extends State<OrderReceipt> {
  late DeliverySummary? arg;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // arg = (ModalRoute.of(context)?.settings.arguments as Trip);
    arg = (ModalRoute.of(context)?.settings.arguments as DeliverySummary?);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: FastaColors.primary2,
      appBar: AppBarWithBackButton(
        onPressed: () => Navigator.pop(context),
        iconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Receipt",
              style: FastaTextStyle.headline1,
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
                height: 330.h,
                width: 328.w,
                padding: EdgeInsets.symmetric(vertical: 34.h, horizontal: 17.w),
                decoration: BoxDecoration(
                    color: FastaColors.grey10,
                    border: Border.all(color: FastaColors.grey9),
                    borderRadius: BorderRadius.circular(23.h)),
                child: BlocConsumer<ShipmentHandlerBloc, ShipmentHandlerState>(
                    listener: (context, state) {
                  // TODO: implement listener
                }, builder: (context, state) {
                  // log(state.delivery?.rating.rating);
                  if (state.status == AppState.success) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OrderInfo(
                            name: 'Items',
                            value: Text(state.delivery!.sender.items,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Order No',
                            value: Text(state.delivery!.deliverySummary.id,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Rider',
                            value: Text(state.delivery!.rider?.fullName ?? '',
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Pickup point',
                            value: Expanded(
                              child: Text(
                                  state.delivery!.deliverySummary.fromAddress,
                                  textAlign: TextAlign.end,
                                  style: FastaTextStyle.subtitleHard),
                            ),
                          ),
                          OrderInfo(
                            name: 'Tip',
                            value: Text(state.delivery!.tip.amount,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Delivery Point',
                            value: Expanded(
                              child: Text(
                                  state.delivery!.deliverySummary.toAddress,
                                  textAlign: TextAlign.end,
                                  style: FastaTextStyle.subtitleHard),),
                          ),
                          OrderInfo(
                            name: 'Items state',
                            value: Text(state.delivery!.sender.itemState,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Rating',
                            value: Row(children: [
                              ...List.generate(
                                int.parse(state.delivery!.rating.rating.isEmpty
                                    ? '0'
                                    : state.delivery!.rating.rating),
                                (index) => const Icon(Icons.star,
                                    color: FastaColors.green),
                              ).map((e) => e).toList(),
                              ...List.generate(
                                5 -
                                    int.parse(
                                        state.delivery!.rating.rating.isEmpty
                                            ? '0'
                                            : state.delivery!.rating.rating),
                                (index) => const Icon(Icons.star_border_outlined,
                                    color: FastaColors.green),
                              ).map((e) => e).toList()
                            ]),
                          ),
                          OrderInfo(
                            name: 'Depature time',
                            value: Text(state.delivery!.deliverySummary.endTime.toDateTime,
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Payment method',
                            value: Text('wallet',
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Distance',
                            value: Text(state.delivery!.deliverySummary.distance+ ' km',
                                style: FastaTextStyle.subtitleHard),
                          ),
                          OrderInfo(
                            name: 'Cost',
                            value: Text(state.delivery!.deliverySummary.cost,
                                style: FastaTextStyle.subtitleHard),
                          ),
                        ]);
                  }
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                })),
            SizedBox(
              height: 58.h,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Notify.error(context, 'Download Receipt is Not Avaiable Yet');
                },
                child: Container(
                    height: 40.h,
                    width: 141.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.cloud, size: 13.h),
                        Text(
                          'Download Receipt',
                          style: FastaTextStyle.subtitleHard,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: FastaColors.grey11),
                        color: FastaColors.grey10,
                        borderRadius: BorderRadius.circular(8.h))),
              ),
            ),
            SizedBox(
              height: 112.h,
            ),
          ],
        ),
      ),
    );
  }
}

class OrderInfo extends StatelessWidget {
  final String name;
  final Widget value;
  const OrderInfo({
    required this.name,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(name,
          style: FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey11)),
      value
    ]);
  }
}

