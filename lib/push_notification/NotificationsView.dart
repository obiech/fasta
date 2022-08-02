import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/dashboard/dashboard.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/profile/widgets/feature_builder.dart';
import 'package:fasta/push_notification/Bloc/NotificationBloc.dart';
import 'package:fasta/push_notification/NotificationMessageView.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsView extends StatefulWidget {
  static const String route = '/NotificationView';

  const NotificationsView({Key? key}) : super(key: key);

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  void initState() {
    super.initState();

    context.read<NotificationBloc>().add(GetAllNotificationsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<NotificationBloc>().add(GetAllNotificationsEvent());
        await Future.delayed(const Duration(seconds: 3));
      },
      child: Scaffold(
          appBar: AppBar(
            bottomOpacity: 0,
            toolbarHeight: 81.h,
            elevation: 0,
            centerTitle: false,
            backgroundColor: FastaColors.primary2,
            leadingWidth: 100.w,
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 23.w,
                ),
                IconButton(
                    icon: Icon(Icons.arrow_back_rounded,
                        size: 16.w, color: FastaColors.primary),
                    onPressed: () => Navigator.pop(context)),
              ],
            ),
          ),
          backgroundColor: FastaColors.primary2,
          body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              physics: const BouncingScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Notifications',
                        style: FastaTextStyle.headline6,
                      ),
                    ),

                    SizedBox(height: 28.h),

                    // Notification List
                    BlocBuilder<NotificationBloc, NotificationState>(
                        builder: ((context, state) {
                      if (state.appState == AppState.failed) {
                        return Center(
                          child: Text(
                            state.error.errorMessage,
                            style: FastaTextStyle.subtitle1,
                          ),
                        );
                      }else if(state.appState ==AppState.loading){
                        return const Center(child: CircularProgressIndicator());
                      } else if (state.appState == AppState.success) {
                        if (state.entityList.isEmpty) {
                          return const Text('No Notifications');
                        } else {
                          return Column(
                            children: [
                              Column(
                                children: List.generate(state.entityList.length,
                                    (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          NotificationMessageView.route,
                                          arguments: state
                                              .entityList[index].message
                                              .toString());
                                      context.read<NotificationBloc>().add(
                                          MarkUserReadEvent(
                                              state.entityList[index].id));
                                    },
                                    child: FeatureBuilder(
                                        name: state.entityList[index].title,
                                        icon: state.entityList[index].isRead
                                            ? Icons.mark_as_unread_outlined
                                            : Icons.mark_as_unread),
                                  );
                                }),
                              ),
                            ],
                          );
                          ;
                        }
                      }
                      return const Center(
                          child: CircularProgressIndicator.adaptive());
                    }))
                  ]))),
    );
  }
}
