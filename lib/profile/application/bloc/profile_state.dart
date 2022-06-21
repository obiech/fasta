part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState(
      {required AppState status,
      User? user,
      String? otpId,
      required ErrorMessage errorMessage}) = _ProfileState;
  factory ProfileState.initial() =>
      ProfileState(status: AppState.waiting, errorMessage: '');
}
