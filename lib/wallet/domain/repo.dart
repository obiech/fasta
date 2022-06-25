import 'package:dartz/dartz.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:fasta/wallet/domain/entity/paystack.dart';
import 'package:fasta/wallet/domain/entity/transcation.dart';
import 'package:fasta/wallet/repository/args.dart';

abstract class WalletData {
  ErrorOr<Unit> verifyTransaction({required String reference});

  ErrorOr<Transaction> balance();
  ErrorOr<PayStack> getDepositLink(String amount);
  ErrorOr<List<Transaction>> allTransactions(TransactionArg arg);
  ErrorOr<Transaction> transactionDetail(String transactionId);
  ErrorOr<List<Transaction>> getDepositTransaction(TransactionArg arg);
  ErrorOr<List<Transaction>> getWithdrawTransaction(TransactionArg arg);
  ErrorOr<List<Transaction>> getAllEarnings(TransactionArg arg);
  ErrorOr<String> getTotalEarnings(String period);

  ErrorOr<List<BankInfo>> getBankList();
  ErrorOr<AccountInfo> resolveAccountNumber(String accountNumber, String bankCode);
  ErrorOr<String> initialWithdrawal();
  ErrorOr<Unit> confirmWithdrawalOtp(ConfirmWithdrawal  arg);

}
