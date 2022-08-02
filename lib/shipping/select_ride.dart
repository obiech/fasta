import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/shipping/order_details.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/shipping/widgets/elevated_container_circular.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class SelectRide extends StatefulWidget {
  static const String route = '/SelectRide';
  const SelectRide({Key? key}) : super(key: key);

  @override
  State<SelectRide> createState() => _SelectRideState();
}

class _SelectRideState extends State<SelectRide>
    with RoundedLoadingButtonMixin {
  late Map<String, dynamic> arg;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arg = (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>);
  }

  int? _selectedIndex;
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
          horizontal: 27.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your're Ontrack",
              style: FastaTextStyle.headline1,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Please chose the most suitable \n'
              'vehicle for your item.',
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
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: ElevatedContainerCircular(
                      isSelected: _selectedIndex == index,
                      image: _data[index].image,
                      type: _data[index].name,
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 68.h,
            ),
            CustomButton(
              controller: btnController,
              onPressed: () {
                if (_selectedIndex != null) {
                  arg.putIfAbsent('VechicleType',
                      () => VechicleType(_data[_selectedIndex!].name));
                  Navigator.pushNamed(context, SenderInfo.route,
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

class _RideOptions {
  final String name, image;

  _RideOptions(this.name, this.image);
}

List<_RideOptions> _data = [
  _RideOptions('bike', 'bike_small'),
  _RideOptions('car', 'car'),
  _RideOptions('van', 'delivery-van'),
  _RideOptions('truck', 'container'),
];
// bike, car, van, bus, truck