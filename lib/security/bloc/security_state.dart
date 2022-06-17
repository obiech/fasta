part of 'security_bloc.dart';

@freezed
class SecurityState with _$SecurityState {
  factory SecurityState(
      {String? otpId,
      required AppState status,
      String? error}) = _SecurityState;
}
