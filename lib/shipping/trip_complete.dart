import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

enum TipAmount { tip100, tip500, tip1000, none }

class TripCompleted extends StatefulWidget {
  static const route = '/TripCompleted';
  const TripCompleted({Key? key}) : super(key: key);

  @override
  State<TripCompleted> createState() => _TripCompletedState();
}

class _TripCompletedState extends State<TripCompleted>
    with RoundedLoadingButtonMixin {
  late DeliverySummary? arg;
  TipAmount tipAmount = TipAmount.none;
  bool isTipTap = false;
  bool isRatingTap = false;
  final rating= 0;
  final tipBtnController = RoundedLoadingButtonController();

  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arg = (ModalRoute.of(context)?.settings.arguments as DeliverySummary);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FastaColors.primary2,
        appBar: AppBar(
            toolbarHeight: 81.h,
            backgroundColor: FastaColors.primary2,
            title: Text('Trip Complete', style: FastaTextStyle.hardLabel),
            centerTitle: true,
            elevation: 0,
            actions: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 36.h,
                    width: 36.h,
                    margin: EdgeInsets.only(right: 23.w),
                    child: Center(
                      child: Text(
                        'X',
                        style: FastaTextStyle.subtitle1,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: FastaColors.grey5,
                    ),
                  ),
                ),
              ),
            ]),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 23.w),
          child: Column(children: [
            SizedBox(height: 27.h),
            CircleAvatar(
              radius: 50.h,
              backgroundColor: FastaColors.lightOrange,
              backgroundImage: Image.asset('assets/2.png').image,
            ),
            SizedBox(height: 21.h),
            Text(
              'How would you rate your experience',
              style: FastaTextStyle.subtitle1,
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.star, size: 31.h,),
                  onPressed: (){

                  },
                  color: FastaColors.green,
                 
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.green,
                  size: 31.h,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.green,
                  size: 31.h,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.green,
                  size: 31.h,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Icon(
                  Icons.star,
                  color: FastaColors.grey9,
                  size: 31.h,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Poor',
                  style: FastaTextStyle.subtitleHard,
                ),
                Text(
                  'Excellent',
                  style: FastaTextStyle.subtitleHard,
                )
              ],
            ),
            SizedBox(
              height: 48.h,
            ),
            Container(
              height: 35.h,
              width: 115.w,
              decoration: BoxDecoration(
                  color: FastaColors.lightBlue,
                  borderRadius: BorderRadius.circular(8.h)),
              child: Center(
                child: Text(
                  'Tip your rider',
                  style: FastaTextStyle.subtitleHard,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    tipAmount = TipAmount.tip100;
                    setState(() {});
                  },
                  child: Container(
                    height: 32.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Center(
                        child: Text('NGN 100.00',
                            style: FastaTextStyle.hardLabel2.copyWith(
                                fontSize: 13.f,
                                color: (tipAmount == TipAmount.tip100)
                                    ? FastaColors.primary2
                                    : FastaColors.primary))),
                    decoration: BoxDecoration(
                        color: (tipAmount == TipAmount.tip100)
                            ? FastaColors.primary
                            : FastaColors.primary2,
                        borderRadius: BorderRadius.circular(8.h),
                        border: Border.all(
                            color: (tipAmount == TipAmount.tip100)
                                ? FastaColors.primary2
                                : FastaColors.grey7)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    tipAmount = TipAmount.tip500;
                    setState(() {});
                  },
                  child: Container(
                    height: 32.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Center(
                        child: Text('NGN 500.00',
                            style: FastaTextStyle.hardLabel2.copyWith(
                                fontSize: 13.f,
                                color: (tipAmount == TipAmount.tip500)
                                    ? FastaColors.primary2
                                    : FastaColors.primary))),
                    decoration: BoxDecoration(
                        color: (tipAmount == TipAmount.tip500)
                            ? FastaColors.primary
                            : FastaColors.primary2,
                        borderRadius: BorderRadius.circular(8.h),
                        border: Border.all(
                            color: (tipAmount == TipAmount.tip500)
                                ? FastaColors.primary2
                                : FastaColors.grey7)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    tipAmount = TipAmount.tip1000;
                    setState(() {});
                  },
                  child: Container(
                    height: 32.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Center(
                        child: Text('NGN 1000.00',
                            style: FastaTextStyle.hardLabel2.copyWith(
                                fontSize: 13.f,
                                color: (tipAmount == TipAmount.tip1000)
                                    ? FastaColors.primary2
                                    : FastaColors.primary))),
                    decoration: BoxDecoration(
                        color: (tipAmount == TipAmount.tip1000)
                            ? FastaColors.primary
                            : FastaColors.primary2,
                        borderRadius: BorderRadius.circular(8.h),
                        border: Border.all(
                            color: (tipAmount == TipAmount.tip1000)
                                ? FastaColors.primary2
                                : FastaColors.grey7)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            MultiBlocListener(
              listeners: [
                BlocListener<ShipmentHandlerBloc, ShipmentHandlerState>(
                  listenWhen: ((previous, current) => isTipTap),
                  listener: (context, state) {
                    if (state.status == AppState.failed) {
                      tipBtnController.error();
                      tipBtnController.reset();
                      Notify.error(context, state.errorMessage);
                    } else if (state.status == AppState.loading) {
                      tipBtnController.start();
                    } else if (state.status == AppState.success) {
                      tipBtnController.success();
                    }
                  },
                ),
                BlocListener<ShipmentHandlerBloc, ShipmentHandlerState>(
                  listenWhen: (previous, current) => isRatingTap,
                  listener: (context, state) {
                    if (state.status == AppState.failed) {
                      buttonerror();
                      Notify.error(context, state.errorMessage);
                    } else if (state.status == AppState.loading) {
                      tipBtnController.start();
                    } else if (state.status == AppState.success) {
                      buttonsucces();
                    }
                  },
                ),
              ],
              child: CustomButton.named(
                  controller: tipBtnController,
                  width: 132.w,
                  name: 'Tip',
                  onPressed: () {
                    final tip;
                    if (tipAmount == TipAmount.tip100) {
                      context.read<ShipmentHandlerBloc>().add(
                          ShipmentHandlerEvent.tipDelivery(arg!.id, '100'));
                    }
                    if (tipAmount == TipAmount.tip500) {
                      context.read<ShipmentHandlerBloc>().add(
                          ShipmentHandlerEvent.tipDelivery(arg!.id, '500'));
                    }
                    if (tipAmount == TipAmount.tip1000) {
                      context.read<ShipmentHandlerBloc>().add(
                          ShipmentHandlerEvent.tipDelivery(arg!.id, '1000'));
                    }
                  }),
            ),
            SizedBox(
              height: 70.h,
            ),
            TextFormField(
              maxLines: 7,
              decoration: InputDecoration(
                  hintText: '\n\n     Add a comment',
                  hintStyle: FastaTextStyle.subtitleHard
                      .copyWith(color: FastaColors.grey7),
                  filled: true,
                  fillColor: FastaColors.grey5,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h))),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
                controller: btnController,
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst)),
            SizedBox(
              height: 40.h,
            ),
          ]),
        ));
  }
}
