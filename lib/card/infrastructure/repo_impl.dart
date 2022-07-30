import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/card/domain/repo.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

import '../../core/endpoints.dart';
import 'cardmodel.dart';

class Cardrepoimpl implements Cardrepo {
  final ApiClient _client;

  Cardrepoimpl(this._client);
  @override
  ErrorOr<cardmodel> addcard(String cardNumber, String cardname, String cvv,
      String expiryMonth, String expiryYear) async {
    try {
      Map<String, dynamic> body = {
        'cardNumber': cardNumber,
        'cvv': cvv,
        'expiryMonth': expiryMonth,
        'expiryYear': expiryYear,
        'cardHolderName': cardname
      };
      final res = await _client.post(Endpoints.card.addcard, body: body);
      print('${res.data}');
      return Right(cardmodel.fromJson(res.data));
    } catch (e) {
      log('${e.toString()}');

      return Left(AppError(e.toString()));
    }
  }
}
