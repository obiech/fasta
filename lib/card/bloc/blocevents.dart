part of 'CardBloc.dart';

abstract class CardEvent{

}

class AddCardEvent extends CardEvent{
final String cardNumber;
final String cardname;
final String cvv;
final String expiryMonth;
final String expiryYear;
AddCardEvent({required this.cardNumber, required this.cardname, required this.cvv, required this.expiryMonth, required this.expiryYear});

}