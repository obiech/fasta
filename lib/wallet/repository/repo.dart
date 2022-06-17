import 'package:dartz/dartz.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:fasta/wallet/domain/entity/error.dart';
import 'package:fasta/wallet/domain/entity/transaction.dart';
import 'package:fasta/wallet/domain/repo.dart';

class WalletRepository {
  final WalletData _repo;

  WalletRepository(this._repo);

  Future<Either<PayStackError, Transaction>> initilize(
          {required String email, required String amount}) =>
      _repo.initilize(email: email, amount: amount);

  Future<Either<PayStackError, Unit>> verifyTransaction(
          {required String reference}) =>
      _repo.verifyTransaction(reference: reference);
}
