part of 'CardBloc.dart';

abstract class cardevent{

}

class addcardevent extends cardevent{
final String cardNumber;
final String cardname;
final String cvv;
final String expiryMonth;
final String expiryYear;
addcardevent({required this.cardNumber, required this.cardname, required this.cvv, required this.expiryMonth, required this.expiryYear});

}