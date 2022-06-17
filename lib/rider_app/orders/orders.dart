import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/inter_app_widgets/order_preview.dart';
import 'package:fasta/shipping/order_receipt.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class OrdersViewRider extends StatefulWidget {
  static const String route = '/OrdersViewRider';
  const OrdersViewRider({Key? key}) : super(key: key);

  @override
  State<OrdersViewRider> createState() => _OrdersViewRiderState();
}

class _OrdersViewRiderState extends State<OrdersViewRider> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      type: AppBarType.profile,
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Orders',
            style: FastaTextStyle.headline1,
          ),
          SizedBox(
            height: 22.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, OrderReceipt.route);
            },
            child: const OrderPreview(
              name: 'Ongoing',
              to: 'Ade drive, Ogudu GRA',
              from: 'Computer village Ikeja',
              distance: '1km away',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, OrderReceipt.route);
            },
            child: const OrderPreview(
              name: 'Ongoing',
              to: 'Ade drive, Ogudu GRA',
              from: 'Computer village Ikeja',
              distance: '1km away',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, OrderReceipt.route);
            },
            child: const OrderPreview(
              name: 'Ongoing',
              to: 'Ade drive, Ogudu GRA',
              from: 'Computer village Ikeja',
              distance: '1km away',
            ),
          ),
          const OrderPreview(
            name: 'Ongoing',
            to: 'Ade drive, Ogudu GRA',
            from: 'Computer village Ikeja',
            distance: '1km away',
          )
        ],
      ),
    );
  }
}
