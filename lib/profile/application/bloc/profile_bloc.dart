import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/profile/repository/args.dart';
import 'package:fasta/profile/repository/repo.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository repo;
  ProfileBloc(this.repo) : super(ProfileState.initial()) {
    on<_UpdateProfile>(_onUpdate);
    on<_GetProfile>(_onGetProfile);
    on<_UpdateProfileAvater>(_onUpdateProfileAvater);
    on<_VerifyEmail>(_onVerifyEmail);
    on<_ResendEmailOtp>(_onResendEmailOtp);
  }

  _onUpdate(_UpdateProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await repo.updateProfile(arg: event.arg);
    res.fold((l) => emit(state.copyWith(status: AppState.failed)),
        (r) => add(const ProfileEvent.getProfile()));
  }

  _onGetProfile(_GetProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await repo.getProfile();
    res.fold((l) => emit(state.copyWith(status: AppState.failed)),
        (r) => emit(state.copyWith(status: AppState.success, user: r)));
  }

  _onUpdateProfileAvater(
      _UpdateProfileAvater event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await repo.updateProfileAvater(event.avater);
    res.fold(
        (l) => emit(state.copyWith(status: AppState.failed)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  void _onVerifyEmail(_VerifyEmail event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await repo.verifyEmail(event.arg);

    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }
    void _onResendEmailOtp(_ResendEmailOtp event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await repo.resendEmailOtp(event.email);

    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
              otpId: r,
            )));
  }
}
