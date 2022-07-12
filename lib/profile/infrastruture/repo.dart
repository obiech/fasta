import 'dart:developer';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/models/otp.dart';
import 'package:fasta/models/otp_models.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/profile/domain/repo.dart';
import 'package:fasta/profile/infrastruture/model/users_model.dart';
import 'package:fasta/profile/repository/args.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

class ProfileDataImpl implements ProfileData {
  final ApiClient _client;

  ProfileDataImpl(this._client);
  @override
  Future<Either<AppError, Unit>> updateProfile(
      {required ProfileArg arg}) async {
    try {
      await _client.post(Endpoints.profile.updateProfile, body: arg.toMap());
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, User>> getProfile() async {
    try {
      final res = await _client.get(Endpoints.profile.getProfile);
      return Right(UserModel.fromJson(res.data));
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, Unit>> updateProfileAvater(Uint8List avater) async {
    try {
      final file = await MultipartFile.fromBytes(avater).finalize();
      final image = FormData.fromMap({'image': file});
      log(file.first.toString());
      await _client.post(Endpoints.profile.uploadUserPhoto, body: image);
      return const Right(unit);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, String>> resendEmailOtp(String emailAddress) async {
    try {
      final body = {'email': emailAddress};
      final res = await _client.post(Endpoints.email.resendEmail, body: body);
      return Right((res.data['data']['otpId'] as int).toString());
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, Unit>> verifyEmail(VerifyEmailArg arg) async {
    try {
      int? a;
      final otpRes =
          await getOtp(OTP(int.parse(arg.userId), int.parse(arg.otpId)));
      log(otpRes.toString());
      otpRes.fold((l) => null, (r) => a =r);
      await _client.post(Endpoints.email.verifyEmail, body: {'otpId':arg.otpId,'otpCode':a.toString()});
      return const Right(unit);
    } on  DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  ErrorOr<int> getOtp(OTP otp) async {
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
      // await confirmOtp(
      //     otpID: e.data['data']['id'],
      //     otpCode: int.parse(e.data['data']['code'] as String),
      //     userID: e.data['data']['userId']);
      return  Right(int.parse(e.data['data']['code'] as String),);
    } on DioError catch (e) {
      return Left(e.fromDioError);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
