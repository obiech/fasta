import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/profile/repository/args.dart';

abstract class ProfileData {
  Future<Either<AppError, Unit>> updateProfile({required ProfileArg arg});
  Future<Either<AppError, User>> getProfile();
  Future<Either<AppError, User>> updateProfileAvater(FormData avater);
}
