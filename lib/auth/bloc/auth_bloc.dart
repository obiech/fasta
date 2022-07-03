import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/auth/domain/entity/user.dart';
import 'package:fasta/auth/repository/repo.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/models/otp.dart';
import 'package:fasta/shipping/infrastructure/scoket_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repo;

  AuthBloc(this._repo) : super(AuthState.initial()) {
    on<_Login>(_onLogin);
    on<_Register>(_onRegister);
  }

  void _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final Either<AppError, Unit> res =
        await _repo.login(email: event.email, password: event.password);

    res.fold((l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) {
      emit(state.copyWith(
        appState: AppState.success,
      ));
       ShippingSocketImpl().initialize();
    });
  }

  void _onRegister(_Register event, Emitter<AuthState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final Either<AppError, OTP> res = await _repo.register(
        email: event.email,
        password: event.password,
        fullName: event.fullName,
        state: event.state,
        city: event.city,
        phoneNumber: event.phoneNumber);

    res.fold((l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(appState: AppState.success)));
  }
}
