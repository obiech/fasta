import 'dart:developer';

import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/extension/string.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
import 'package:fasta/global_widgets/infinite_scroll_view.dart';
import 'package:fasta/push_notification/NotificationsView.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/domain/entity/transcation.dart';
import 'package:fasta/wallet/repository/args.dart';
import 'package:fasta/wallet/widgets/custom_drop_down_button.dart';
import 'package:fasta/wallet/widgets/first_page_error_indicator.dart';
import 'package:fasta/wallet/widgets/new_page_error_widget.dart';
import 'package:fasta/wallet/widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

enum TransactionStatus {pending, success, failed, cancelled, reverted,}
class TransactionHistory extends StatefulWidget {
  static const String route = '/TransactionHistory';
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}
final DateTime today  = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+1);

class _TransactionHistoryState extends State<TransactionHistory> {
  int _selectedIndex = 0;
  int nextPageKey = 1;
  String status = '';
  final PagingController<int, Transaction> _pageController = PagingController(
    firstPageKey: 1,
  );
  TextEditingController startDate = TextEditingController(text: '2022-05-25');


  TextEditingController endDate = TextEditingController(
      text:
          '${today.year}-0${today.month}-0${today.day}');

  void reload(String date) {
    startDate.text = date;
    setState(() {});
    log('called');
  }

  void reloadEndDate(String date) {
    endDate.text = date;
    log('called');
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _pageController.addPageRequestListener((pageKey) {
      pageListener();
    });
  }

  void pageListener() {
    context.read<PaystackBloc>().add(PaystackEvent.allTransactions(
          TransactionArg(
              endDate: endDate.text.isEmpty ? '' : endDate.text,
              page: nextPageKey.toString(),
              limit: '10',
              order: 'desc',
              status: status,
              type: '',
              startDate: startDate.text.isEmpty ? '' : startDate.text),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
         nextPageKey = 1;
        _pageController.itemList = null;
       
        // setState(() {
          
        // });
        // context.read<PaystackBloc>().add(PaystackEvent.allTransactions(
        //       TransactionArg(
        //           endDate: '',
        //           page: '1',
        //           limit: '10',
        //           order: 'desc',
        //           status: '',
        //           type: '',
        //           startDate: ''),
        //     ));
        await Future.delayed(const Duration(seconds: 3));
      },
      child: Scaffold(
          appBar: AppBarWithBackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconPressed: () => Navigator.pushNamed(context, NotificationsView.route),
          ),
          backgroundColor: FastaColors.primary2,
          body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              physics: const BouncingScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction History',
                      style: FastaTextStyle.headline6,
                    ),
                    SizedBox(height: 28.h),
                    Row(
                        children: List.generate(_type.length, (index) {
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _selectedIndex = index;
                            
                            nextPageKey = 1;
                            status= _type[index].toLowerCase() == 'all'?'':_type[index].toLowerCase();  
                            setState(() {});
                              _pageController.itemList = null;
                            
                            
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 8.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.w, vertical: 6.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.h),
                                  border: Border.all(),
                                  color: (_selectedIndex == index)
                                      ? FastaColors.primary
                                      : FastaColors.primary2),
                              child: Center(
                                  child: Text(
                                _type[index],
                                style: FastaTextStyle.hardLabel2.copyWith(
                                    color: (_selectedIndex == index)
                                        ? FastaColors.primary2
                                        : FastaColors.primary),
                              ))),
                        ),
                      );
                    })),
                    SizedBox(height: 28.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomDropDownButton(
                          time: 'From',
                          reload: reload,
                          controller: startDate,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        CustomDropDownButton(
                          time: 'To',
                          reload: reloadEndDate,
                          controller: endDate,
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {
                             nextPageKey = 1;
                             _selectedIndex = 0;
                             status='';
        _pageController.itemList = null;
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 12.h),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                                color: FastaColors.primary,
                                borderRadius: BorderRadius.circular(10.h)),
                            child: Center(
                                child: Text(
                              'Search',
                              style: FastaTextStyle.subtitleHard
                                  .copyWith(color: FastaColors.primary2),
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 38.h),
                    BlocListener<PaystackBloc, PaystackState>(
                      listener: (context, state) {
                        if (state.appState == AppState.success) {
                          determineAppend(state);
                        } else if (state.appState == AppState.failed) {
                          _pageController.error = state.error!.errorMessage;
                        } else if (state.appState == AppState.loading) {}
                      },
                      child: BlocBuilder<PaystackBloc, PaystackState>(
                          builder: (context, state) {
                        if (state.allTransaction?.transactions.isEmpty ??
                            true) {
                          return const Center(child: Text('No Result'));
                        } else if (state.appState == AppState.loading &&
                            nextPageKey == 1) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        }
                        return InfinityScrollWidget(pageController: _pageController, errorMessage: state.error?.errorMessage??'Something Went Wrong.',);
                      }),
                    )
                  ]))),
    );
  }

  void determineAppend(PaystackState state) {
    if ((state.allTransaction?.lastPage ?? 0) > nextPageKey) {
      log('this');
      nextPageKey = nextPageKey + 1;
      // _pageController.nextPageKey = _pageController.nextPageKey??0+ 1;
      _pageController.appendPage(
          state.allTransaction!.transactions, nextPageKey);
    } else {
      log('that');
      _pageController.appendLastPage(state.allTransaction!.transactions);
    }
  }
}

const List<String> _type = ['All', 'Success', 'Pending'];

/// Basic layout for indicating that an exception occurred.
