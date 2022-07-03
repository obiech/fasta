import 'dart:developer';

import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:fasta/wallet/domain/entity/paystack.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/wallet/domain/entity/transcation.dart';
import 'package:fasta/wallet/domain/repo.dart';
import 'package:fasta/wallet/infrastructure/model/paystack_model.dart';
import 'package:fasta/wallet/infrastructure/model/transaction_model.dart';
import 'package:fasta/wallet/repository/args.dart';

class WalletDataImpl implements WalletData {
  final ApiClient _client;

  WalletDataImpl(this._client);

  @override
  Future<Either<AppError, Unit>> verifyTransaction(
      {required String reference}) async {
    try {
      await _client.post(Endpoints.wallet.verifyPaystackLink,
          body: {"reference": reference});
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, PayStack>> getDepositLink(String amount) async {
    try {
      final res = await _client
          .post(Endpoints.wallet.getDepositLink, body: {'amount': amount});
      return Right(PayStackModel.fromJson(res.data));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<Transaction>> allTransactions(TransactionArg arg) async {
    try {
      log(Endpoints.wallet.allTransactions(arg));
      final rs = (Endpoints.wallet.allTransactions(arg));
      log(rs);

      final res = await _client.get(Endpoints.wallet.allTransactions(arg));
      return Right((res.data['data'] as List)
          .map((e) => TransactionModel.fromMap(e))
          .toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Transaction> balance() async {
    try {
      final res = await _client.get(Endpoints.wallet.userBalance);
      log(res.toString());
      return Right(TransactionModel.fromMap(res.data['data']));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<Transaction>> getAllEarnings(TransactionArg arg) async {
    try {
      final res = await _client.get(Endpoints.wallet.getAllEarnings(arg));
      return Right((res.data['data'] as List)
          .map((e) => TransactionModel.fromMap(e))
          .toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<Transaction>> getDepositTransaction(TransactionArg arg) async {
    try {
      final res =
          await _client.get(Endpoints.wallet.getDepositTransactions(arg));
      return Right((res.data['data'] as List)
          .map((e) => TransactionModel.fromMap(e))
          .toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<String> getTotalEarnings(String period) async {
    try {
      final res = await _client.get(Endpoints.wallet.getTotalEarnings);
      return Right(res.data['data']['total']);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<Transaction>> getWithdrawTransaction(TransactionArg arg) async {
    try {
      final res =
          await _client.get(Endpoints.wallet.getWithdrawalTransactions(arg));
      return Right((res.data['data'] as List)
          .map((e) => TransactionModel.fromMap(e))
          .toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Transaction> transactionDetail(String transactionId) async {
    try {
      final res =
          await _client.get(Endpoints.wallet.getATransaction(transactionId));
      return Right(TransactionModel.fromMap(res.data));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> confirmWithdrawalOtp(ConfirmWithdrawal arg) async {
    try {
      log(arg.toMap().toString());
      await _client.post(Endpoints.wallet.getWithdrawalOtp, body: arg.toMap());
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<BankInfo>> getBankList() async {
    try {
      final res = await _client.get(Endpoints.wallet.bankList);
      log(res.data['data'].toString());
      return Right(
          (res.data['data'] as List).map((e) => BankInfo.fromMap(e)).toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<String> initialWithdrawal() async {
    try {
      final res = await _client.post(Endpoints.wallet.initialWithdrawal);
      log(res.data['data']['otpId'].toString());
      return Right(res.data['data']['otpId'].toString());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<AccountInfo> resolveAccountNumber(
      String accountNumber, String bankCode) async {
    try {
      final body = {'accountNumber': accountNumber, 'bankCode': bankCode};
      final res =
          await _client.post(Endpoints.wallet.resolveAccountNumber, body: body);
      return Right(AccountInfo.fromMap(res.data['data']));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
