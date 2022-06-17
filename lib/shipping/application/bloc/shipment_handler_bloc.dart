import 'package:bloc/bloc.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/infrastructure/repo.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/shipping/repository/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment_handler_event.dart';
part 'shipment_handler_state.dart';
part 'shipment_handler_bloc.freezed.dart';

class ShipmentHandlerBloc
    extends Bloc<ShipmentHandlerEvent, ShipmentHandlerState> {
  final ShipmentRepository repo;
  ShipmentHandlerBloc(this.repo) : super(ShipmentHandlerState.initial()) {
    on<_CreateShipment>(_onCreateShipment);
    on<_UpdateTripStatus>(_onUpdateTripStatus);
    on<_GetAllShipment>(_onGetAllShipment);
    on<_GetAllDeliveries>(_onGetAllDeliveries);
    on<_CreateTrip>(_onCreateTrip);
  }

  _onCreateTrip(_CreateTrip event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.createTrip(arg: event.arg);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }

  _onUpdateTripStatus(
      _UpdateTripStatus event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));
    final res = await repo.updateTripStatus(id: event.id, status: event.status);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }

  _onGetAllShipment(
      _GetAllShipment event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.getAllShipment(email: event.email);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success, allDelivery: r)));
  }

  _onGetAllDeliveries(
      _GetAllDeliveries event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.getAllDeliveries(email: event.email);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success, allDelivery: r)));
  }

  _onCreateShipment(
      _CreateShipment event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.createShipment(arg: event.arg);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success, address: r)));
  }
}
