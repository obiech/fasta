import 'package:bloc/bloc.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/security/repository/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_event.dart';
part 'security_state.dart';
part 'security_bloc.freezed.dart';

class SecurityBloc extends Bloc<SecurityEvent, SecurityState> {
  final SecurityRepository _repo;
  SecurityBloc(this._repo) : super(SecurityState(status: AppState.waiting)) {
    on<SecurityEvent>((event, emit) {
      on<_ChangePhoneNumber>(_onChangePhoneNumber);
      on<_ChangePhoneNumberConfirmOTP>(_onChangePhoneNumberConfirmOTP);
      on<_ChangeEmail>(_onChangeEmail);
      on<_ChangeEmailConfirmOTP>(_onChangeEmailConfirmOTP);
      on<_ChangePassword>(_onChangePassword);
    });
  }
  void _onChangePhoneNumber(
      _ChangePhoneNumber event, Emitter<SecurityState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await _repo.changePhoneNumber(event.phoneNumber);
    res.fold(
        (l) => emit(
            state.copyWith(status: AppState.failed, error: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success, otpId: r)));
  }

  void _onChangePhoneNumberConfirmOTP(
      _ChangePhoneNumberConfirmOTP event, Emitter<SecurityState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res =
        await _repo.changePhoneNumberConfirmOTP(event.otpId, event.otpCode);
    res.fold(
        (l) => emit(
            state.copyWith(status: AppState.failed, error: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  void _onChangeEmail(_ChangeEmail event, Emitter<SecurityState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await _repo.changeEmail(event.email);
    res.fold(
        (l) => emit(
            state.copyWith(status: AppState.failed, error: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success, otpId: r)));
  }

  void _onChangeEmailConfirmOTP(
      _ChangeEmailConfirmOTP event, Emitter<SecurityState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await _repo.changeEmailConfirmOTP(event.otpId, event.otpCode);
    res.fold(
        (l) => emit(
            state.copyWith(status: AppState.failed, error: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  void _onChangePassword(
      _ChangePassword event, Emitter<SecurityState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await _repo.changePassword(
        event.oddPassword, event.newPasswrd, event.confirmPassword);
    res.fold(
        (l) => emit(
            state.copyWith(status: AppState.failed, error: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }
}
