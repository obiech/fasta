part of 'auth_rider_bloc.dart';

@freezed
class AuthRiderState with _$AuthRiderState {
  factory AuthRiderState({
   required final AppState status,
    required final String error,
    final OTP? otp,
  }) = _AuthRiderState;

  factory AuthRiderState.initial() {
    return AuthRiderState(error: '', status: AppState.waiting);
  }
}
