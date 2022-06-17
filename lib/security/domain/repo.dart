import 'package:dartz/dartz.dart';
import 'package:fasta/errrors/app_error.dart';

abstract class SecurityData {
  Future<Either<AppError, String>> changePhoneNumber(String phoneNumber);
  Future<Either<AppError, Unit>> changePhoneNumberConfirmOTP(
      String otpId, String otpCode);

  Future<Either<AppError, String>> changeEmail(String email);
  Future<Either<AppError, Unit>> changeEmailConfirmOTP(
      String otpId, String otpCode);

  Future<Either<AppError, Unit>> changePassword(
      String oddPassword, String newPasswrd, String confirmPassword);
}
