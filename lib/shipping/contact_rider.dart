import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ContactRider extends StatefulWidget {
  static const route = '/ContactRider';
  const ContactRider({Key? key}) : super(key: key);

  @override
  State<ContactRider> createState() => _ContactRiderState();
}

class _ContactRiderState extends State<ContactRider> {
  @override
  Widget build(BuildContext context) {
    return MapView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.4.screenHeight,
            child: DraggableScrollableSheet(
                // expand: false,
                initialChildSize: 0.85,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      decoration: BoxDecoration(
                          color: FastaColors.primary2,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.h),
                              topRight: Radius.circular(30.h))),
                      child: ListView(controller: scrollController, children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                height: 6.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: FastaColors.grey5,
                                  borderRadius: BorderRadius.circular(100.h),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 36.h,
                                  width: 36.h,
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
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Contact Rider',
                              style: FastaTextStyle.headline4.copyWith(
                                  fontWeight: FastaFontWeight.semiBold),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Text(
                              'Carrier rates may apply',
                              style: FastaTextStyle.subtitle2,
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                          ],
                        )
                      ]));
                }),
          ),
        )
      ],
    );
  }
}
