import 'dart:developer';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/profile/domain/repo.dart';
import 'package:fasta/profile/infrastruture/model/users_model.dart';
import 'package:fasta/profile/repository/args.dart';

class ProfileDataImpl implements ProfileData {
  final ApiClient _client;

  ProfileDataImpl(this._client);
  @override
  Future<Either<AppError, Unit>> updateProfile(
      {required ProfileArg arg}) async {
    try {
      await _client.post(Endpoints.profile.updateProfile, body: arg.toMap());
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  Future<Either<AppError, User>> getProfile() async {
    try {
      final res = await _client.get(Endpoints.profile.getProfile);
      return Right(UserModel.fromJson(res.data));
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
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
