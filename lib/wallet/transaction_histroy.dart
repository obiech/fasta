import 'dart:developer';

import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/extension/string.dart';
import 'package:fasta/global_widgets/app_bars/app_bar_back_button.dart';
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

class TransactionHistory extends StatefulWidget {
  static const String route = '/TransactionHistory';
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  int _selectedIndex = 0;
  int nextPageKey = 0;
  final PagingController<int, Transaction> _pageController = PagingController(
    firstPageKey: 1,
  );
  // String startDate = '';
  TextEditingController startDate = TextEditingController(text: '2022-05-25');
  // String endDate = '';
  TextEditingController endDate = TextEditingController(
      text:
          '${DateTime.now().year}-0${DateTime.now().month}-0${DateTime.now().day + 1}');

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
    nextPageKey = nextPageKey + 1;
    context.read<PaystackBloc>().add(PaystackEvent.allTransactions(
          TransactionArg(
              endDate: endDate.text.isEmpty ? "" : endDate.text,
              page: nextPageKey.toString(),
              limit: '10',
              order: 'desc',
              status: '',
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
        context.read<PaystackBloc>().add(PaystackEvent.allTransactions(
              TransactionArg(
                  endDate: '',
                  page: '1',
                  limit: '10',
                  order: 'desc',
                  status: '',
                  type: '',
                  startDate: ''),
            ));
        await Future.delayed(const Duration(seconds: 3));
      },
      child: Scaffold(
          appBar: AppBarWithBackButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
                        children: List.generate(3, (index) {
                      return GestureDetector(
                        onTap: () {
                          _selectedIndex = index;
                          setState(() {});
                        },
                        child: Container(
                            margin: EdgeInsets.only(right: 24.w),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 6.h),
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
                            context.read<PaystackBloc>().add(
                                PaystackEvent.allTransactions(TransactionArg(
                                    endDate: endDate.text,
                                    page: '1',
                                    limit: '10',
                                    order: 'desc',
                                    status: '',
                                    type: '',
                                    startDate: startDate.text)));
                            // reload(date)
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
                        } else if (state.appState == AppState.loading) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        }
                        // return Column(
                        //     children: List.generate(state.allTransaction.length,
                        //         (index) {
                        //   return NotificationMessage(
                        //       radius: 15.h,
                        //       padding: EdgeInsets.symmetric(
                        //         horizontal: 15.w,
                        //       ),
                        //       icon: Container(
                        //         height: 25.h,
                        //         width: 27.w,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(6.h),
                        //           color: FastaColors.lightBlue,
                        //         ),
                        //         child: Center(
                        //             child: Image.asset(
                        //           'assets/2.0x/credit-card.png',
                        //           height: 16.h,
                        //           width: 16.h,
                        //         )),
                        //       ),
                        //       content: Text(
                        //         (state.allTransaction[index].amount.toAmount.isNegative)?
                        //         'Debited ' '${state.allTransaction[index].amount.toAmount}'
                        //         :'Credited '
                        //         '${state.allTransaction[index].amount.toAmount}',
                        //         style: FastaTextStyle.hardLabel2
                        //             .copyWith(fontSize: 12.f, color: (state.allTransaction[index].amount.toAmount.isNegative)?FastaColors.alert:FastaColors.green),
                        //       ),
                        //       timeRecieved: Column(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         crossAxisAlignment: CrossAxisAlignment.end,
                        //         children: [
                        //           GestureDetector(
                        //               onTap: () {},
                        //               child: Text(
                        //                   state.allTransaction[index].createdAt
                        //                       .toDateTime,
                        //                   style: FastaTextStyle.subtitle3)),
                        //           Text(
                        //             state.allTransaction[index].type!,
                        //             style: FastaTextStyle.subtitle3,
                        //           ),
                        //         ],
                        //       ));
                        // }));
                        return PagedListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            pagingController: _pageController,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 16.h,
                              );
                            },
                            padding: const EdgeInsets.all(16),
                            builderDelegate:
                                PagedChildBuilderDelegate<Transaction>(
                              itemBuilder: (context, item, index) {
                                return NotificationMessage(
                                    radius: 15.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15.w,
                                    ),
                                    icon: Container(
                                      height: 25.h,
                                      width: 27.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.h),
                                        color: FastaColors.lightBlue,
                                      ),
                                      child: Center(
                                          child: Image.asset(
                                        'assets/2.0x/credit-card.png',
                                        height: 16.h,
                                        width: 16.h,
                                      )),
                                    ),
                                    content: Text(
                                      (state.allTransaction!.transactions[index]
                                              .amount.toAmount.isNegative)
                                          ? 'Debited '
                                              '${state.allTransaction!.transactions[index].amount.toAmount}'
                                          : 'Credited '
                                              '${state.allTransaction!.transactions[index].amount.toAmount}',
                                      style: FastaTextStyle.hardLabel2.copyWith(
                                          fontSize: 12.f,
                                          color: (state
                                                  .allTransaction!
                                                  .transactions[index]
                                                  .amount
                                                  .toAmount
                                                  .isNegative)
                                              ? FastaColors.alert
                                              : FastaColors.green),
                                    ),
                                    timeRecieved: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                                state
                                                    .allTransaction!
                                                    .transactions[index]
                                                    .createdAt
                                                    .toDateTime,
                                                style:
                                                    FastaTextStyle.subtitle3)),
                                        Text(
                                          state.allTransaction!
                                              .transactions[index].type!,
                                          style: FastaTextStyle.subtitle3,
                                        ),
                                      ],
                                    ));
                              },
                              newPageErrorIndicatorBuilder: (context) {
                                return NewPageErrorIndicator(
                                  onTap: () {
                                    _pageController.retryLastFailedRequest();
                                  },
                                  message: state.error!.errorMessage,
                                );
                              },
                              firstPageErrorIndicatorBuilder: (context) {
                                return FirstPageErrorIndicator(
                                  message: state.error!.errorMessage,
                                  onTryAgain: () {
                                    _pageController.itemList = null;
                                    // context
                                    //     .read<SearchBloc>()
                                    //     .add(SearchEvent.search(searchController.text));
                                  },
                                );
                              },
                            ));
                      }),
                    )
                  ]))),
    );
  }

  void determineAppend(PaystackState state) {
    if ((state.allTransaction?.lastPage ?? 0) >
        (_pageController.nextPageKey ?? 1)) {
      _pageController.appendPage(
          state.allTransaction!.transactions, _pageController.nextPageKey);
    } else {
      _pageController.appendLastPage(state.allTransaction!.transactions);
    }
  }
}


const List<String> _type = ['All', 'Wallet', 'Card'];



/// Basic layout for indicating that an exception occurred.


