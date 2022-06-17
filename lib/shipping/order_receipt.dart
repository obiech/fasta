import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class OrderReceipt extends StatefulWidget {
  static const String route = '/OrderReceipt';
  const OrderReceipt({Key? key}) : super(key: key);

  @override
  State<OrderReceipt> createState() => _OrderReceiptState();
}

class _OrderReceiptState extends State<OrderReceipt> {
  late Trip? arg;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // arg = (ModalRoute.of(context)?.settings.arguments as Trip);
    arg = (ModalRoute.of(context)?.settings.arguments as Trip?);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: FastaColors.primary2,
      appBar: AppBarWithBackButton(
        onPressed: () => Navigator.pop(context),
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OrderInfo(
                        name: 'Items',
                        value: Text(arg?.itemName ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Order No',
                        value: Text(arg?.tripId ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Rider',
                        value: Text(arg?.rider ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Pickup point',
                        value: Text(arg?.from ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Items',
                        value: Text(arg?.itemName ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Delivery Point',
                        value: Text(arg?.to ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Items',
                        value: Text(arg?.itemName ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Rating',
                        value: Row(
                          children: List.generate(int.parse(arg?.rating ?? '1'),
                              (index) {
                            return const Icon(Icons.star,
                                color: FastaColors.green);
                          }),
                        ),
                      ),
                      OrderInfo(
                        name: 'Depature time',
                        value: Text(arg?.departureTime ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Payment method',
                        value: Text(arg?.paymentMethod ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Arrival time',
                        value: Text(arg?.arrivalTime ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                      OrderInfo(
                        name: 'Cost',
                        value: Text(arg?.price ?? '',
                            style: FastaTextStyle.subtitleHard),
                      ),
                    ])),
            SizedBox(
              height: 58.h,
            ),
            Align(
              alignment: Alignment.center,
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

class _ReceiptContent {
  final String name;
  final Widget value;
  const _ReceiptContent({required this.name, required this.value});
}

List<_ReceiptContent> _data = [
  _ReceiptContent(
      name: 'Items',
      value: Text('Bone Straight, Shower cap',
          style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Order No',
      value: Text('#1785849348', style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Rider',
      value: Text('John Snow', style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Pickup point',
      value:
          Text('Computer Village Ikeja', style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Delivery Point',
      value: Text('Ogudu GRA', style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Rating',
      value: Row(
        children: List.generate(5, (index) {
          return Icon(Icons.star, color: FastaColors.green);
        }),
      )),
  _ReceiptContent(
      name: 'Depature time',
      value: Text('4:30 PM', style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Payment method',
      value: Text('Card', style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Arrival time',
      value: Text('6:30PM', style: FastaTextStyle.subtitleHard)),
  _ReceiptContent(
      name: 'Cost',
      value: Text('NGN 1400', style: FastaTextStyle.subtitleHard)),
];
