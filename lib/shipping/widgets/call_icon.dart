import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/contact_rider.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

class CallIcon extends StatelessWidget {
  final Color iconColor;
  const CallIcon({Key? key, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 57.h,
      child: Center(
        child: IconButton(
          icon: Icon(
            Icons.call,
            size: 20.h,
          ),
          onPressed: () {
            Navigator.pushNamed(context, ContactRider.route);
          },
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: iconColor,
      ),
    );
  }
}
