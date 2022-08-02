
import 'package:fasta/colors/colors.dart';
import 'package:fasta/extension/string.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:fasta/wallet/domain/entity/transcation.dart';
import 'package:fasta/wallet/widgets/first_page_error_indicator.dart';
import 'package:fasta/wallet/widgets/new_page_error_widget.dart';
import 'package:fasta/wallet/widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class InfinityScrollWidget<T extends Transaction> extends StatelessWidget {
  const InfinityScrollWidget({
    Key? key,
    required this.errorMessage,
    required PagingController<int, T> pageController,
  }) : _pageController = pageController, super(key: key);

  final PagingController<int, T> _pageController;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, T>(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        pagingController: _pageController,
        // separatorBuilder: (context, index) {
        //   return SizedBox(
        //     height: 8.h,
        //   );
        // },
        padding: const EdgeInsets.all(16),
        builderDelegate:
            PagedChildBuilderDelegate<T>(
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
                  (item.amount.toAmount.isNegative)
                      ? 'Debited '
                          '${item.amount.toAmount}'
                      : 'Credited '
                          '${item.amount.toAmount}',
                  style: FastaTextStyle.hardLabel2.copyWith(
                      fontSize: 12.f,
                      color:
                          (item.amount.toAmount.isNegative)
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
                            item.createdAt.toDateTime,
                            style:
                                FastaTextStyle.subtitle3)),
                    Text(
                      item.type!,
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
              message: errorMessage,
            );
          },
          firstPageErrorIndicatorBuilder: (context) {
            return FirstPageErrorIndicator(
              message: errorMessage,
              onTryAgain: () {
                _pageController.itemList = null;
                // context
                //     .read<PaystackBloc>()
                //     .add(PaystackEvent.allTransactions(
                //       TransactionArg(
                //           endDate: endDate.text.isEmpty
                //               ? ""
                //               : endDate.text,
                //           page: nextPageKey.toString(),
                //           limit: '10',
                //           order: 'desc',
                //           status: '',
                //           type: '',
                //           startDate: startDate.text.isEmpty
                //               ? ''
                //               : startDate.text),
                    // ));
              },
            );
          },
        ));
  }
}
