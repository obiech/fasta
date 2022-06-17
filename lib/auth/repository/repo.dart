import 'package:dartz/dartz.dart';
import 'package:fasta/auth/domain/repo.dart';
import 'package:fasta/models/otp.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

class AuthRepository {
  final Auth _repo;

  AuthRepository(this._repo);

  ErrorOr<Unit> login({required String email, required String password}) =>
      _repo.login(email: email, password: password);

  ErrorOr<OTP> register(
          {required String email,
          required String password,
          required String fullName,
          required String state,
          required String city,
          required String phoneNumber}) =>
      _repo.register(
          fullName: fullName,
          email: email,
          password: password,
          state: state,
          city: city,
          phoneNumber: phoneNumber);

  ErrorOr<OTP> resendOtp() => _repo.resendOtp();
  ErrorOr<Unit> getOtp(OTP otp) => _repo.getOtp(otp);
  ErrorOr<OTP> forgotPassword(String phoneNumber) =>
      _repo.forgotPassword(phoneNumber);
  ErrorOr<Unit> forgotPasswordOtp(
          {required String otpId,
          required String otpCode,
          required String userId,
          required String newPassword,
          required String confirmPassword}) =>
      _repo.forgotPasswordOtp(
          otpId: otpId,
          otpCode: otpCode,
          userId: userId,
          newPassword: newPassword,
          confirmPassword: confirmPassword);
  ErrorOr<Unit> confirmOtp(
          {required int otpID, required int otpCode, required int userID}) =>
      _repo.confirmOtp(otpID: otpID, otpCode: otpCode, userID: userID);
}
