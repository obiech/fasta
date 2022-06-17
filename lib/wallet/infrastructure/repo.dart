import 'package:dio/dio.dart';
import 'dart:io';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/wallet/domain/entity/transaction.dart';
import 'package:fasta/wallet/domain/entity/error.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/wallet/domain/repo.dart';
import 'package:fasta/wallet/infrastructure/model/transaction_model.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ' 'sk_test_6a7eac48eabfa03922e3be090e0e57719516fcb0';

    return super.onRequest(options, handler);
  }
}

class WalletDataImpl implements WalletData {
  // final ApiClient _client;
  final Dio _plugin = Dio()..interceptors.add(CustomInterceptor());

  // WalletDataImpl(this._client);
  @override
  Future<Either<PayStackError, Transaction>> initilize(
      {required String email, required String amount}) async {
    try {
      Map<String, dynamic> body = {
        "email": email,
        "amount": amount,
        "callback_url": 'https://google.com'
      };
      final res = await _plugin.post(Endpoints.paystack.initialize, data: body);
      return Right(TransactionModel.fromJson(res.data));
    } catch (e) {
      return Left(PayStackError(e.toString()));
    }
  }

  @override
  Future<Either<PayStackError, Unit>> verifyTransaction(
      {required String reference}) async {
    try {
      await _plugin.get(Endpoints.paystack.verify(reference));
      return const Right(unit);
    } catch (e) {
      return Left(PayStackError(e.toString()));
    }
  }
}
