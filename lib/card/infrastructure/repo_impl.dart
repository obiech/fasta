import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/card/domain/repo.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

import '../../core/endpoints.dart';
import '../domain/models/card_model.dart';

class CardRepoimpl implements CardData {
  final ApiClient _client;

  CardRepoimpl(this._client);
  @override
  ErrorOr<CardModel> addcard({required String cardNumber,required  String cardname,required  String cvv,
     required  String expiryMonth,required  String expiryYear}) async {
    try {
      Map<String, dynamic> body = {
        'cardNumber': cardNumber,
        'cvv': cvv,
        'expiryMonth': expiryMonth,
        'expiryYear': expiryYear,
        'cardHolderName': cardname
      };
      final res = await _client.post(Endpoints.card.addcard, body: body);
      return Right(CardModel.fromJson(res.data['data'] ));
    }  on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<CardModel>> getAllCards()async {
    try {
      final res = await _client.get(Endpoints.card.getAllCards);

      return Right((res.data['data'] as List).map((e) => CardModel.fromJson(e)).toList());
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
