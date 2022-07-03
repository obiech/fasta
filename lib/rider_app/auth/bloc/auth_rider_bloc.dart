import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/models/otp.dart';
// import 'package:fasta/rider_app/auth/domain/entity/otp.dart';
import 'package:fasta/rider_app/auth/repository/arguments.dart';
import 'package:fasta/rider_app/auth/repository/repo.dart';
import 'package:fasta/shipping/infrastructure/scoket_io.dart';
import 'package:flutter_contacts/properties/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_rider_event.dart';
part 'auth_rider_state.dart';
part 'auth_rider_bloc.freezed.dart';

class AuthRiderBloc extends Bloc<AuthRiderEvent, AuthRiderState> {
  final AuthRiderRepository repo;
  AuthRiderBloc(this.repo) : super(AuthRiderState.initial()) {
    on<__Login>(_onLogin);
    on<_Register>(_onRegister);
    on<_RegisterAsDriver>(_onRegisterAsDriver);
    on<_UpdateLicenceInfo>(_onUpdateLicenceInfo);
    on<_UpdateDriverVehicle>(_onUpdateDriverVehicle);
    on<_UploadVehicleImage>(_onUploadVehicleImage);
  }
  void _onLogin(__Login event, Emitter<AuthRiderState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.login(email: event.email, password: event.password);

    res.fold(
        (l) => emit(
            state.copyWith(error: l.errorMessage, status: AppState.failed)),
        (r) {
      ShippingSocketImpl().initialize();
      emit(state.copyWith(status: AppState.success));
    });
  }

  void _onRegister(_Register event, Emitter<AuthRiderState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.register(
        fullName: event.fullName,
        email: event.email,
        password: event.password,
        state: event.state,
        city: event.city,
        phoneNumber: event.phoneNumber);

    res.fold(
        (l) => emit(
            state.copyWith(error: l.errorMessage, status: AppState.failed)),
        (r) {
      ShippingSocketImpl().initialize();
      emit(state.copyWith(status: AppState.success, otp: r));
    });
  }

  void _onRegisterAsDriver(
      _RegisterAsDriver event, Emitter<AuthRiderState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.registerAsDriver();

    res.fold(
        (l) => emit(
            state.copyWith(error: l.errorMessage, status: AppState.failed)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }

  void _onUpdateLicenceInfo(
      _UpdateLicenceInfo event, Emitter<AuthRiderState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.updateLicenceInfo(
        expireDate: event.expireDate, licenceNumber: event.licenceNumber);

    res.fold(
        (l) => emit(
            state.copyWith(error: l.errorMessage, status: AppState.failed)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }

  void _onUpdateDriverVehicle(
      _UpdateDriverVehicle event, Emitter<AuthRiderState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.updateDriverVehicle(arg: event.arg);

    res.fold(
        (l) => emit(
            state.copyWith(error: l.errorMessage, status: AppState.failed)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }

  void _onUploadVehicleImage(
      _UploadVehicleImage event, Emitter<AuthRiderState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.uploadVehicleImage(image: event.image);

    res.fold(
        (l) => emit(
            state.copyWith(error: l.errorMessage, status: AppState.failed)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }
}
