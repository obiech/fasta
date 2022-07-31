import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/auth/domain/repo.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/core/server_address.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/models/otp_models.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:fasta/models/otp.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthImpl implements Auth {
  final ApiClient _client;

  AuthImpl(this._client);
  @override
  ErrorOr<Unit> login({required String email, required String password}) async {
    try {
      Map<String, dynamic> body = {'email': email, 'password': password};
      final res = await _client.post(Endpoints.auth.login, body: body);
      const ServerAddress().token = res.data['meta']['token'];
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<OTP> register(
      {required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber}) async {
    try {
      Map<String, dynamic> body = {
        'firstName': fullName.split(' ')[0],
        'lastName': fullName.split(' ')[1],
        'email': email,
        'password': password,
        'state': state,
        'city': city,
        'phoneNumber': phoneNumber,
      };
      final res = await _client.post(Endpoints.auth.register, body: body);
      final otpRes = await getOtp(OTPModel.fromJson(res.data));
      log(otpRes.toString());
      // confirmOtp(otpID: otpID, otpCode: otpCode, userID: userID)
      return Right(OTPModel.fromJson(res.data));
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> confirmOtp(
      {required int otpID, required int otpCode, required int userID}) async {
    try {
      Map<String, dynamic> body = {
        'userId': userID,
        'otpId': otpID,
        'otpCode': otpCode.toString()
      };
      final res = await _client.post(Endpoints.auth.confirmOTP, body: body);
      const ServerAddress().token = res.data['meta']['token'];

      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<OTP> forgotPassword(String phoneNumber) async {
    try {
      final res = await _client.post(Endpoints.auth.resendOTP);
      return Right(OTPModel.fromJson(res.data));
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> forgotPasswordOtp(
      {required String otpId,
      required String otpCode,
      required String userId,
      required String newPassword,
      required String confirmPassword}) async {
    try {
      await _client.post(Endpoints.auth.resendOTP);
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> getOtp(OTP otp) async {
    try {
      log(Endpoints.auth.getUserOTP(
        otp.userID,
        otp.otpID,
      ));
      var e = await _client.get(Endpoints.auth.getUserOTP(
        otp.userID,
        otp.otpID,
      ));
      log(e.toString());
      await confirmOtp(
          otpID: e.data['data']['id'],
          otpCode: int.parse(e.data['data']['code'] as String),
          userID: e.data['data']['userId']);
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<OTP> resendOtp() async {
    try {
      final res = await _client.post(Endpoints.auth.resendOTP);
      return Right(OTPModel.fromJson(res.data));
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> googleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        await _client.post(Endpoints.auth.googleSignIn, body: {
          'idToken': googleSignInAuthentication.idToken,
          'code': googleSignInAuthentication.accessToken
        });
        return const Right(unit);
      }
      return const Right(unit);
    } catch (e) {
      return const Right(unit);
    }
  }
}
