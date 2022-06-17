import 'package:dartz/dartz.dart';
import 'package:fasta/wallet/domain/entity/error.dart';
import 'package:fasta/wallet/domain/entity/transaction.dart';

abstract class WalletData {
  Future<Either<PayStackError, Transaction>> initilize(
      {required String email, required String amount});

  Future<Either<PayStackError,  Unit>> verifyTransaction(
      {required String reference});
}
