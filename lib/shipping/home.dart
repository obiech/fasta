import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_with_Avater.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/text_fields/text_field_with_hint_text.dart';
import 'package:fasta/profile/application/bloc/profile_bloc.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/shipping/select_ride.dart';
import 'package:fasta/shipping/widgets/elevated_container_tickbok.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShippingView extends StatefulWidget {
  static const String route = '/ShippingView';
  const ShippingView({Key? key}) : super(key: key);

  @override
  State<ShippingView> createState() => _ShippingViewState();
}

class _ShippingViewState extends State<ShippingView>
    with RoundedLoadingButtonMixin {
    int? _selectedIndex;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: FastaColors.primary2,
      appBar: AppBarWithAvater(
        IconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
        onPressed: () => Navigator.pushNamed(context, ProfileView.route),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 27.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return Text(
                  'Hey ${state.user?.fullName ?? ''}!',
                  style: FastaTextStyle.headline1,
                );
              },
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'What would you like to \n'
              'ship today?',
              style: FastaTextStyle.subtitle1,
            ),
            SizedBox(
              height: 29.h,
            ),
            Column(
              children: List.generate(_data.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 14.h),
                  child: GestureDetector(
                    onTap: () {
                      _selectedIndex = index;
                      setState(() {
                        _data[index].onTap = !_data[index].onTap;
                      });
                    },
                    child: ElevatedContainerCheckBox(
                      isSelected: _data[index].onTap,
                      image: _data[index].image,
                      type: _data[index].name,
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 22.h,
            ),
            CustomButton(
              controller: btnController,
              onPressed: () async {
                if (_selectedIndex == _data.length - 1) {
                  _showMyDialog(context, _data[_selectedIndex!].name);
                } else if (_selectedIndex != null &&
                    _selectedIndex != _data.length - 1) {
                  Map<String, dynamic> arg = {
                    'aboutGoods': AboutGoods(_data[_selectedIndex!].name)
                  };

                  Navigator.pushNamed(context, SelectRide.route,
                      arguments: arg);
                }
              },
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

Future<void> _showMyDialog(BuildContext context, String name) async {
  final itemController = TextEditingController();
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
        titleTextStyle: FastaTextStyle.headline6
            .copyWith(fontSize: 25.f, color: FastaColors.grey7),
        titlePadding: EdgeInsets.only(top: 20.h),
        title: const Center(child: Text('Please Specify Item')),
        content: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 38.w, vertical: 20.h),
          child: ListBody(
            children: <Widget>[
              CustomHintTextField(
                controller: itemController,
              ),
              SizedBox(
                height: 56.h,
              ),
              GestureDetector(
                onTap: () {
                  Map<String, dynamic> arg = {
                    'aboutGoods': AboutGoods(itemController.text)
                  };

                  Navigator.pushReplacementNamed(context, SelectRide.route,
                      arguments: arg);
                },
                child: Container(
                  width: 202.w,
                  height: 55.h,
                  child: Center(
                    child: Text(
                      'Proceed',
                      style: FastaTextStyle.hardLabel
                          .copyWith(color: FastaColors.primary2),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.h),
                      color: FastaColors.primary),
                ),
              ),
              SizedBox(
                height: 149.h,
              ),
            ],
          ),
        ),
      );
    },
  );
}

class _ShipmentOption {
  final String name, image;
  bool onTap;

  _ShipmentOption(this.name, this.onTap, this.image);
}

List<_ShipmentOption> _data = [
  _ShipmentOption('Food', false, 'fast-food-big'),
  _ShipmentOption('Clothing', false, 'clothes-hanger'),
  _ShipmentOption('Electronics', false, 'electronics'),
  _ShipmentOption('Accessories & more', false, 'diamond-ring'),
  _ShipmentOption('Gadget', false, 'desktop'),
  _ShipmentOption('Documents', false, 'documents'),
  _ShipmentOption('Other', false, 'documents'),
];
