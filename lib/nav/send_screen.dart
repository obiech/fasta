// flutter imports
import 'package:flutter/material.dart';

// project imports
import 'package:fasta/colors/colors.dart';
import 'package:fasta/theming/size_config.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: ColorPalette.white,
        body: SizedBox(
            height: 1.screenHeight,
            width: 1.screenWidth,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 50, 24, 0),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Send",
                      ),
                    ]),
              ),
            )),
      ),
    );
  }
}
