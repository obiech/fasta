import 'package:fasta/colors/colors.dart';
import 'package:fasta/dashboard/widgets/elevated_container_small.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class AddInterests extends StatefulWidget {
  static const String route = '/AddInterests';
  const AddInterests({Key? key}) : super(key: key);

  @override
  State<AddInterests> createState() => _AddInterestsState();
}

class _AddInterestsState extends State<AddInterests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FastaColors.primary2,
      appBar: AppBarWithBackButton(onPressed: () => Navigator.pop(context)),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 31.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Interests',
              style: FastaTextStyle.headline1,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Lets us know what makes you tick \n'
              'so that we can serve you better.',
              style: FastaTextStyle.subtitle1,
            ),
            SizedBox(
              height: 29.h,
            ),
            Wrap(
                runSpacing: 16.h,
                spacing: 8.w,
                children: List.generate(_data.length, (index) {
                  return GestureDetector(
                    onTap: () => setState(() {
                      _data[index].onTap = !_data[index].onTap;
                    }),
                    child: ElevatedContainerSmall(
                      isSelected: _data[index].onTap,
                      type: _data[index].name,
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}

class _Interests {
  final String name;
  bool onTap;

  _Interests(this.name, this.onTap);
}

List<_Interests> _data = [
  _Interests('Food', false),
  _Interests('Fasion', false),
  _Interests('Health', false),
  _Interests('Music', false),
  _Interests('Sport', false),
  _Interests('Drinks', false),
  _Interests('News', false),
  _Interests('Pets', false),
  _Interests('Technology', false),
  _Interests('Science', false),
];
