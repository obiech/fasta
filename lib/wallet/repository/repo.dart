import 'package:dartz/dartz.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:fasta/wallet/domain/entity/paystack.dart';
import 'package:fasta/wallet/domain/entity/transcation.dart';
import 'package:fasta/wallet/domain/repo.dart';
import 'package:fasta/wallet/repository/args.dart';

class WalletRepository {
  final WalletData _repo;

  WalletRepository(this._repo);

  ErrorOr<Unit> verifyTransaction({required String reference}) =>
      _repo.verifyTransaction(reference: reference);

  ErrorOr<Transaction> balance() => _repo.balance();
  ErrorOr<PayStack> getDepositLink(String amount) =>
      _repo.getDepositLink(amount);
  ErrorOr<AllTrasaction> allTransactions(TransactionArg arg) =>
      _repo.allTransactions(arg);
  ErrorOr<Transaction> transactionDetail(String transactionId) =>
      _repo.transactionDetail(transactionId);
  ErrorOr<AllTrasaction> getDepositTransaction(TransactionArg arg) =>
      _repo.getDepositTransaction(arg);
  ErrorOr<AllTrasaction> getWithdrawTransaction(TransactionArg arg) =>
      _repo.getWithdrawTransaction(arg);
  ErrorOr<AllTrasaction> getAllEarnings(TransactionArg arg) =>
      _repo.getAllEarnings(arg);
  ErrorOr<String> getTotalEarnings(String period) =>
      _repo.getTotalEarnings(period);

  ErrorOr<AccountInfo> resolveAccountNumber(
          String accountNumber, String bankCode) =>
      _repo.resolveAccountNumber(accountNumber, bankCode);
  ErrorOr<String> initialWithdrawal() => _repo.initialWithdrawal();
  ErrorOr<Unit> confirmWithdrawalOtp(ConfirmWithdrawal arg) =>
      _repo.confirmWithdrawalOtp(arg);
  ErrorOr<List<BankInfo>> getBankList() =>
      _repo.getBankList();
}
