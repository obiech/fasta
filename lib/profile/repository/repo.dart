import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/profile/domain/repo.dart';
import 'package:fasta/profile/repository/args.dart';

class ProfileRepository {
  final ProfileData _repo;

  ProfileRepository(this._repo);

  Future<Either<AppError, Unit>> updateProfile({required ProfileArg arg}) =>
      _repo.updateProfile(arg: arg);
  Future<Either<AppError, Unit>> updateProfileAvater(Uint8List avater) =>
      _repo.updateProfileAvater(avater);
  Future<Either<AppError, User>> getProfile() => _repo.getProfile();
  Future<Either<AppError, String>> resendEmailOtp(String email) =>
      _repo.resendEmailOtp(email);

  Future<Either<AppError, Unit>> verifyEmail(VerifyEmailArg arg) =>
      _repo.verifyEmail(arg);
}
