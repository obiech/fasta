import 'package:fasta/wallet/domain/entity/paystack.dart';

class PayStackModel extends PayStack {
  PayStackModel(
      {required String reference,
      required String accessCode,
      String? id,
      required String authorizationUrl})
      : super(
            reference: reference,
            accessCode: accessCode,
            authorizationUrl: authorizationUrl);
  factory PayStackModel.fromJson(Map<String, dynamic> map) {
    map = map['data'];
    return PayStackModel(
        authorizationUrl: map['authorization_url'],
        accessCode: map['access_code'],
        id: map['transactionId'],
        reference: map['reference']);
  }
}
