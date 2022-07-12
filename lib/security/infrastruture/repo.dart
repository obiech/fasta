import 'package:dio/dio.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/security/domain/repo.dart';

class SecurityDataImpl implements SecurityData {
  final ApiClient _client;

  SecurityDataImpl(this._client);
  @override
  Future<Either<AppError, String>> changeEmail(String email) async {
    try {
      final res = await _client
          .post(Endpoints.email.changeEmail, body: {'email': email});
      return Right(res.data['data']['otpId']);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, Unit>> changeEmailConfirmOTP(
      String otpId, String otpCode) async {
    try {
      final body = {'otpId': otpId, 'otpCode': otpCode};
      await _client.post(Endpoints.email.newEmailConfirmOTP, body: body);
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, Unit>> changePassword(
      String oldPassword, String newPasswrd, String confirmPassword) async {
    try {
      final body = {
        'oldPassword': oldPassword,
        'confirmPassword': confirmPassword,
        'newPasswrd': newPasswrd
      };
      await _client.post(Endpoints.password.changePassword, body: body);
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, String>> changePhoneNumber(String phoneNumber) async {
    try {
      final res = await _client.post(Endpoints.phoneNumber.changePhoneNumber,
          body: {'phoneNumber': phoneNumber});
      return Right(res.data['data']['otpId']);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, Unit>> changePhoneNumberConfirmOTP(
      String otpId, String otpCode) async {
    try {
      final body = {'otpId': otpId, 'otpCode': otpCode};
      await _client.post(Endpoints.phoneNumber.newPhoneNumberConfirmOTP,
          body: body);
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
