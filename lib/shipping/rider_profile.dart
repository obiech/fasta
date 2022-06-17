import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/map_view.dart';
import 'package:fasta/shipping/tracker.dart';
import 'package:fasta/shipping/widgets/call_icon.dart';
import 'package:fasta/shipping/widgets/chat_icon.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class RiderProfile extends StatefulWidget {
  static const route = '/RiderProfile';
  const RiderProfile({Key? key}) : super(key: key);

  @override
  State<RiderProfile> createState() => _RiderProfileState();
}

class _RiderProfileState extends State<RiderProfile> {
  @override
  Widget build(BuildContext context) {
    return MapView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.6.screenHeight,
            child: DraggableScrollableSheet(
                // expand: false,
                minChildSize: 0.1,
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
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                            Center(
                              child: CircleAvatar(
                                radius: 62.h,
                                backgroundImage:
                                    Image.asset('assets/young.png').image,
                              ),
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Center(
                                child: Text(
                              'Joshua Aregbesola',
                              style: FastaTextStyle.hardLabel,
                            )),
                            SizedBox(
                              height: 13.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: FastaColors.green,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  '5.0',
                                  style: FastaTextStyle.hardLabel2,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 21.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ChatIcon(),
                                SizedBox(
                                  width: 51.w,
                                ),
                                const CallIcon(
                                  iconColor: FastaColors.grey5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 52.h,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ItemTrackerView.route);
                                },
                                child: Container(
                                  height: 31.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                      color: FastaColors.grey5,
                                      borderRadius: BorderRadius.circular(7.h)),
                                  child: Center(
                                      child: Text('Fstjsksjs',
                                          style: FastaTextStyle.hardLabel2)),
                                ),
                              ),
                            )
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
