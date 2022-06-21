part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.updateProfile({required ProfileArg arg}) =
      _UpdateProfile;
  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.updateProfileAvater(Uint8List avater) =
      _UpdateProfileAvater;

  const factory ProfileEvent.verifyEmail(VerifyEmailArg arg) = _VerifyEmail;
  const factory ProfileEvent.resendEmailOtp(String email) = _ResendEmailOtp;
}
