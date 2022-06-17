import 'package:dartz/dartz.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/security/domain/repo.dart';

class SecurityRepository {
  final SecurityData _repo;

  SecurityRepository(this._repo);

  Future<Either<AppError, String>> changePhoneNumber(String phoneNumber) =>
      _repo.changePhoneNumber(phoneNumber);
  Future<Either<AppError, Unit>> changePhoneNumberConfirmOTP(
          String otpId, String otpCode) =>
      _repo.changePhoneNumberConfirmOTP(otpId, otpCode);
  Future<Either<AppError, String>> changeEmail(String email) =>
      _repo.changeEmail(email);
  Future<Either<AppError, Unit>> changeEmailConfirmOTP(
          String otpId, String otpCode) =>
      _repo.changeEmailConfirmOTP(otpId, otpCode);
  Future<Either<AppError, Unit>> changePassword(
          String oddPassword, String newPasswrd, String confirmPassword) =>
      _repo.changePassword(oddPassword, newPasswrd, confirmPassword);
}
