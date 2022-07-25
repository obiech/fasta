import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/notifications/notify.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/global_widgets/text_fields/with_title.dart';
import 'package:fasta/security/bloc/security_bloc.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeEmailView extends StatefulWidget {
  static const String route = '/ChangeEmailView';
  const ChangeEmailView({Key? key}) : super(key: key);

  @override
  State<ChangeEmailView> createState() => _ChangeEmailViewState();
}

class _ChangeEmailViewState extends State<ChangeEmailView>
    with RoundedLoadingButtonMixin {
  TextEditingController presentemail = TextEditingController();
  TextEditingController newemail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      type: AppBarType.empty,
      //    onPressed: (){ Navigator.pop(context);},
      customAppBar: AppBar(
          backgroundColor: FastaColors.primary2,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: FastaColors.primary,
            ),
            onPressed: () => Navigator.pop(context),
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Change Email',
              style: FastaTextStyle.headline6,
            ),
            SizedBox(
              height: 22.h,
            ),
            TextFieldWithTitle(
              title: 'Present Email',
              controller: presentemail,
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFieldWithTitle(
              title: 'New Email',
              controller: newemail,
            ),
            SizedBox(
              height: 43.h,
            ),
            BlocListener<SecurityBloc, SecurityState>(
              listener: (context, state) async{
                 if (state.status == AppState.waiting) {
                          } else if (state.status == AppState.loading) {
                            btnController.start();
                          } else if (state.status == AppState.success) {
                            
                            await buttonsucces();
                            Navigator.pop(context);
                          } else if (state.status == AppState.failed) {
                            await buttonerror();
                            Notify.error(context, state.error!);
                          }
              },
              child: CustomButton.named(
                controller: btnController,
                onPressed: () {
                  context.read<SecurityBloc>().add(SecurityEvent.changeEmail(newemail.text));
                },
                name: 'Save',
              ),
            ),
            SizedBox(
              height: 63.h,
            ),
          ],
        ),
      ),
    );
  }
}
