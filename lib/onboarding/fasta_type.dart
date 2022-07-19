import 'package:fasta/onboarding/fasta_started_screen.dart';
import 'package:fasta/onboarding/widgets/elevated_container.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class FastaTypeSelection extends StatefulWidget {
  static const String route = '/FastaTypeSelection';
  const FastaTypeSelection({Key? key}) : super(key: key);

  @override
  State<FastaTypeSelection> createState() => _FastaTypeSelectionState();
}

class _FastaTypeSelectionState extends State<FastaTypeSelection> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 68.h, horizontal: 24.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Welcome Onboard,',
            style: FastaTextStyle.headline1,
          ),
          Padding(
              padding: EdgeInsets.only(top: 9.h),
              child: RichText(
                  text: TextSpan(
                      text: 'How will you like to use ',
                      style: FastaTextStyle.subtitle1,
                      children: [
                    TextSpan(
                        text: 'ITEKKU?.',
                        style: FastaTextStyle.subtitle1
                            .copyWith(fontWeight: FastaFontWeight.semiBold))
                  ]))),
          SizedBox(
            height: 117.h,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _data.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 28.h),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });

                      Navigator.pushNamed(context, FastaStartedScreen.route,
                          arguments: index);
                    },
                    child: ElevatedContainer(
                        image: _data[index].image,
                        type: _data[index].type,
                        description: _data[index].description,
                        isSelected: (_selectedIndex == index)),
                  ),
                );
              })),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Text(
                  'Admin Login',
                  style: FastaTextStyle.subtitle2,
                ),
              ),
              GestureDetector(
                child: Text(
                  'Super Admin',
                  style: FastaTextStyle.subtitle2,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class _Type {
  final String image, type, description;

  const _Type({
    required this.image,
    required this.type,
    required this.description,
  });
}

const List<_Type> _data = [
  _Type(
      image: 'assets/pp2.png',
      type: 'User',
      description:
          'Send and receive items to \nfriends, families and \ncustomers. '),
  _Type(
      image: 'assets/bike.png',
      type: 'Rider',
      description:
          'Register as an independent \ndispatch rider and fulfill \norders for customers. '),
  _Type(
      image: 'assets/truck.png',
      type: 'Fleet Owners',
      description: 'Register more than one \nvehicle'),
  _Type(
      image: 'assets/business.png',
      type: 'Merchants',
      description: 'Register as business owner, \nstore owner etc. '),
];
