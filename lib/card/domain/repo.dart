import 'package:fasta/card/domain/models/card_model.dart';

import '../../typedef.dart/typedefs.dart';

abstract class CardData{
  ErrorOr<CardModel> addcard({required String cardNumber, required String cardname,required  String cvv, required String expiryMonth,required  String expiryYear});
  ErrorOr<List<CardModel>> getAllCards();
}