import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/profile/repository/args.dart';

abstract class ProfileData {
  Future<Either<AppError, Unit>> updateProfile({required ProfileArg arg});
  Future<Either<AppError, User>> getProfile();
  Future<Either<AppError, Unit>> updateProfileAvater(Uint8List avater);
  Future<Either<AppError, String>> resendEmailOtp(String emailAddress);
  Future<Either<AppError, Unit>> verifyEmail(VerifyEmailArg arg);
}
