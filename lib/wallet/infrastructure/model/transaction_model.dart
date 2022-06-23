import 'package:fasta/wallet/domain/entity/transcation.dart';

class TransactionModel extends Transaction {
  TransactionModel(
      {required String amount,
      String? type,
      String? status,
      required String createdAt,
      String? reference,
      String? updatedAt,
      required int id,
      required int userId})
      : super(
            amount: amount,
            createdAt: createdAt,
            id: id,
            userId: userId,
            type: type,
            status: status);

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    // map = map['data'];
    return TransactionModel(
      amount: map['amount'].toString(),
      createdAt: map['createdAt'],
      id: map['id'],
      userId: map['userId'],
      type: map['type'],
      status: map['status'],
      reference: map['reference'],
      updatedAt: map['updatedAt'],
    );
  }
}
