import 'package:fasta/card/add_card.dart';
import 'package:fasta/card/bloc/card_bloc.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CardView extends StatefulWidget {
  static const String route = '/CardView';
  const CardView({Key? key}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  void initState() {
    super.initState();
    context.read<CardBloc>().add(GetAllCards());
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      type: AppBarType.empty,
      customAppBar: AppBar(
        bottomOpacity: 0,
        toolbarHeight: 81.h,
        elevation: 0,
        backgroundColor: FastaColors.primary2,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 23.w,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, ProfileView.route),
              child: Container(
                height: 43.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: FastaColors.ligthOrange2,
                ),
                child: Image.asset(
                  'assets/2.png',
                ),
              ),
            ),
          ],
        ),
        leadingWidth: 100.w,
        actions: [
          BlocBuilder<CardBloc, CardState>(
            builder: (context, state) {
              if (state.cards.length < 5) {
                return IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 28.h,
                  color: FastaColors.primary,
                  onPressed: () =>
                      Navigator.pushNamed(context, AddCardView.route),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          SizedBox(
            width: 23.w,
          )
        ],
      ),
      child: BlocConsumer<CardBloc, CardState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state.appState == AppState.failed) {
            return const Center(
              child: Text('Something went wrong'),
            );
          } else if (state.appState == AppState.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.cards.isEmpty &&
              state.appState == AppState.success) {
            return const _AddCardWidget();
          }
          return Column(
            children: List.generate(state.cards.length, (index) {
              return CreditCardWidget(
                cardNumber: '**** **** **** ${state.cards[index].last4digits}}',
                expiryDate: state.cards[index].expiryMonth.toString() +
                    '/' +
                    state.cards[index].expiryYear.toString().replaceRange(0, 2, ''),
                cardHolderName: state.cards[index].cardname,
                cvvCode: state.cards[index].cvv,
                showBackView: false,
                obscureCardNumber: true,
                obscureCardCvv: true,
                // height: 170.h,
                // width: 1.screenWidth,
                isHolderNameVisible: true,
                // cardBgColor: Colors.red,
                backgroundImage: 'assets/card_background.png',
                isSwipeGestureEnabled: true,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                cardType: CardType.mastercard,
              );
            }),
          );
        },
      ),
    );
  }
}

class _AddCardWidget extends StatelessWidget {
  const _AddCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 37.h,
        ),
        const _NoCardAdded(),
        SizedBox(
          height: 33.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AddCardView.route);
          },
          child: Container(
            decoration: BoxDecoration(
                color: FastaColors.primary,
                borderRadius: BorderRadius.circular(13.h)),
            height: 55.h,
            child: Center(
              child: Text(
                'Add Card   +',
                style: FastaTextStyle.hardLabel
                    .copyWith(color: FastaColors.primary2),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}

class _NoCardAdded extends StatelessWidget {
  const _NoCardAdded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: FastaColors.lightOrange,
          borderRadius: BorderRadius.circular(20.h)),
      height: 124.h,
      width: 328.w,
      child: const Center(
        child: Text('You Have Not added any card'),
      ),
    );
  }
}
