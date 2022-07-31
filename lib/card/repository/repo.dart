import 'package:fasta/card/domain/models/card_model.dart';
import 'package:fasta/card/domain/repo.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

class CardRepository {
  final CardData _repo;
  CardRepository(this._repo);

  ErrorOr<CardModel> addcard(
          {required String cardNumber,
          required String cardname,
          required String cvv,
          required String expiryMonth,
          required String expiryYear}) =>
      _repo.addcard(
          cardNumber: cardNumber,
          cardname: cardname,
          cvv: cvv,
          expiryMonth: expiryMonth,
          expiryYear: expiryYear);
    
    ErrorOr<List<CardModel>> getAllCards() => _repo.getAllCards();
}