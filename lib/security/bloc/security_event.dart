part of 'security_bloc.dart';

@freezed
class SecurityEvent with _$SecurityEvent {
  const factory SecurityEvent.started() = _Started;
  const factory SecurityEvent.changePhoneNumber(String phoneNumber) =
      _ChangePhoneNumber;
  const factory SecurityEvent.changePhoneNumberConfirmOTP(
      String otpId, String otpCode) = _ChangePhoneNumberConfirmOTP;
  const factory SecurityEvent.changeEmail(String email) = _ChangeEmail;
  const factory SecurityEvent.changeEmailConfirmOTP(
      String otpId, String otpCode) = _ChangeEmailConfirmOTP;
  const factory SecurityEvent.changePassword(
          String oddPassword, String newPasswrd, String confirmPassword) =
      _ChangePassword;
}
