part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.initial() =>
      AuthState(appState: AppState.waiting, error: AppError.empty());
  factory AuthState(
      {required AppError error,
      required AppState appState,
      User? user}) = _AuthState;
}
