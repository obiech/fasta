import 'package:dartz/dartz.dart';
import 'package:fasta/models/otp.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

abstract class Auth {
  ErrorOr<Unit> login({required String email, required String password});

  ErrorOr<OTP> register(
      {required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber});
  ErrorOr<OTP> resendOtp();
  ErrorOr<Unit> getOtp(OTP otp);
  ErrorOr<OTP> forgotPassword(String phoneNumber);
  ErrorOr<Unit> forgotPasswordOtp(
      {required String otpId,
      required String otpCode,
      required String userId,
      required String newPassword,
      required String confirmPassword});
  ErrorOr<Unit> confirmOtp(
      {required int otpID, required int otpCode, required int userID});
}
