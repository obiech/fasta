import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/inter_app_widgets/order_preview.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/order_receipt.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OngoingOrders extends StatefulWidget {
  static const String route = '/OngoingOrders';
  const OngoingOrders({Key? key}) : super(key: key);

  @override
  State<OngoingOrders> createState() => _OngoingOrdersState();
}

class _OngoingOrdersState extends State<OngoingOrders> {
  @override
  void initState() {
    super.initState();
    context
        .read<ShipmentHandlerBloc>()
        .add(const ShipmentHandlerEvent.getAllDeliveries());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => context
          .read<ShipmentHandlerBloc>()
          .add(const ShipmentHandlerEvent.getAllDeliveries()),
      child: Scaffold(
        backgroundColor: FastaColors.primary2,
        appBar: AppBarWithBackButton(
          onPressed: (() => Navigator.pop(context)),
        ),
        body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            //
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 30.h),
              child: BlocConsumer<ShipmentHandlerBloc, ShipmentHandlerState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  if (state.status == AppState.loading) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                  if (state.deliverySummary?.isEmpty ?? true) {
                    return const Center(
                      child: Text('No order Yet'),
                    );
                  }
                  return Column(
                      children: List.generate(
                          state.deliverySummary?.length ?? 0, (index) {
                    return GestureDetector(
                      onTap: () {
                        if (state.deliverySummary![index].status
                                .trim()
                                .toUpperCase() ==
                            'pending'.toUpperCase()) {
                              
                        } else if (state.deliverySummary![index].status
                                .trim()
                                .toUpperCase() ==
                            'accepted'.toUpperCase()) {
                        } else {
                          Navigator.pushNamed(context, OrderReceipt.route,
                              arguments: state.deliverySummary![index]);
                        }
                      },
                      child: OrderPreview(
                        to: state.deliverySummary![index].toAddress,
                        from: state.deliverySummary![index].fromAddress,
                        distance: state.deliverySummary![index].distance,
                        deliveryId: state.deliverySummary![index].id,
                        name: state.deliverySummary![index].status,
                      ),
                    );
                  }));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
