import 'package:fasta/colors/colors.dart';
import 'package:fasta/global_widgets/rounded_loading_button/button_mixin.dart';
import 'package:fasta/global_widgets/rounded_loading_button/custom_button.dart';
import 'package:fasta/global_widgets/scaffolds/custom_scaffold.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class AddCardView extends StatefulWidget {
  static const String route = '/AddCardView';
  const AddCardView({Key? key}) : super(key: key);

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> with  RoundedLoadingButtonMixin{
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      type: AppBarType.profile,
      onPressed: () {
        Navigator.pushNamed(context, ProfileView.route);
      },
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
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
            
          ),
            CreditCardForm(
                formKey: formKey,
                obscureCvv: true,
                obscureNumber: true,
                cardNumber: cardNumber,
                cvvCode: cvvCode,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                cardHolderName: cardHolderName,
                expiryDate: expiryDate,
                themeColor: FastaColors.primary,
                textColor: FastaColors.primary,
                cardNumberDecoration: InputDecoration(
              fillColor: FastaColors.grey5,
              filled: true,
              labelText: 'Card Number',
              hintText: 'XXXX XXXX XXXX XXXX',
              labelStyle: FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              hintStyle:
                  FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13.h)),
            ),
                expiryDateDecoration: InputDecoration(
              fillColor: FastaColors.grey5,
              filled: true,
              labelText: 'Expired Date',
              hintText: 'XX/XX',
              labelStyle: FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              hintStyle:
                  FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13.h)),
            ),
                cvvCodeDecoration: InputDecoration(
              fillColor: FastaColors.grey5,
              filled: true,
              labelText: 'Cvv2',
              hintText: 'XXX',
              labelStyle: FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              hintStyle:
                  FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13.h)),
            ),
                cardHolderDecoration: InputDecoration(
              fillColor: FastaColors.grey5,
              filled: true,
              labelText: 'Card Holder Name',
              labelStyle: FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              hintStyle:
                  FastaTextStyle.subtitle3.copyWith(color: FastaColors.grey8),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13.h)),
            ),
                onCreditCardModelChange: onCreditCardModelChange,
              ),
              const SizedBox(
                height: 20,
              ),const SizedBox(
                height: 20,
              ),
              CustomButton.named(controller: btnController, name: 'Validate', onPressed: (){})
            
        ],
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
