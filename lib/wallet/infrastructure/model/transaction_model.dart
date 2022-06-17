import 'package:fasta/wallet/domain/entity/transaction.dart';

class TransactionModel extends Transaction {
  TransactionModel(
      {required String reference,
      required String accessCode,
      required String authorizationUrl})
      : super(
            reference: reference,
            accessCode: accessCode,
            authorizationUrl: authorizationUrl);
  factory TransactionModel.fromJson(Map<String, dynamic> map) {
    map = map['data'];
    return TransactionModel(
        authorizationUrl: map['authorization_url'],
        accessCode: map['access_code'],
        reference: map['reference']);
  }
}
