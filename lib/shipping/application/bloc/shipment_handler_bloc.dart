import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/shipping/infrastructure/models/delivery_dto.dart';
import 'package:fasta/shipping/infrastructure/repo.dart';
import 'package:fasta/shipping/infrastructure/scoket_io.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/shipping/repository/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipment_handler_event.dart';
part 'shipment_handler_state.dart';
part 'shipment_handler_bloc.freezed.dart';

enum Owner { user, rider }

class ShipmentHandlerBloc
    extends Bloc<ShipmentHandlerEvent, ShipmentHandlerState> {
  final ShipmentRepository repo;
  final ShippingSocketImpl socketIO;
  late var listener;
  late var listener1;
  late var listener2;
  late var listener3;
  late var listener4;
  late var listener5;
  late var listener6;
  late var listener7;

  ShipmentHandlerBloc(this.repo, this.socketIO)
      : super(ShipmentHandlerState.initial()) {
    on<_CreateShipment>(_onCreateShipment);
    on<_UpdateTripStatus>(_onUpdateTripStatus);
    on<_GetAllShipment>(_onGetAllShipment);
    on<_GetAllDeliveries>(_onGetAllDeliveries);
    on<_CreateTrip>(_onCreateTrip);
    on<_AcceptCompletedDelivery>(_onAcceptCompletedDelivery);
    on<_RateDelivery>(_onRateDelivery);
    on<_TipDelivery>(_onTipDelivery);
    on<_DeliveryCost>(_onDeliveryCost);
    on<_GetPendingDelivery>(_onGetPendingDelivery);
    on<_AcceptDelivery>(_onAcceptDelivery);
    on<_RejectDelivery>(_onRejectDelivery);
    on<_FinishDelivery>(_onFinishDelivery);
    on<_GetADelivery>(_onGetADelivery);
    on<_Started>(_onSubscription);
    on<_GetAllDeliveriesPendingInvitations>(
        _onGetAllDeliveriesPendingInvitations);
  }

  _onAcceptDelivery(
      _AcceptDelivery event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.acceptDelivery(event.deliveryId);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  _onRejectDelivery(
      _RejectDelivery event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.rejectDelivery(event.deliveryId);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  _onFinishDelivery(
      _FinishDelivery event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.finishDelivery(event.deliveryId);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  _onCreateTrip(_CreateTrip event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.createTrip(arg: event.arg);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)), (r) {
      final toCoordinates = event.arg.toMap();
      // add(ShipmentHandlerEvent.deliveryCost(DeliveryCostArg(fromLat: fromLat, fromLng: fromLng, toLnt: toLnt, toLng: toLng, vehicleType: vehicleType, priority: priority)))
      emit(state.copyWith(status: AppState.success));
    });
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

  @Deprecated('remove')
  _onGetAllShipment(
      _GetAllShipment event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.getAllShipment(email: event.email);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  _onGetAllDeliveries(
      _GetAllDeliveries event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.getAllDeliveries();
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) =>
            emit(state.copyWith(status: AppState.success, deliverySummary: r)));
  }

  _onGetAllDeliveriesPendingInvitations(
      _GetAllDeliveriesPendingInvitations event,
      Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.getAllDeliveriesInvitations();
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success, allDelivery: r)));
  }

  _onCreateShipment(
      _CreateShipment event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.createShipment(arg: event.arg);
    final map = await event.arg.toMap();

    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)), (r) {
      final delivery = DeliveryCostArg(
          fromLat: map['fromLatitude'].toString(),
          fromLng: map['fromLongitude'].toString(),
          toLnt: map['toLatitude'].toString(),
          toLng: map['toLongitude'].toString(),
          vehicleType: map['vehicleType'],
          priority: map['priority']);
      add(ShipmentHandlerEvent.deliveryCost(delivery));
      // add(ShipmentHandlerEvent.getADelivery(r., owner))
      emit(state.copyWith(status: AppState.success, address: r));
    });
  }

  _onAcceptCompletedDelivery(_AcceptCompletedDelivery event,
      Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.acceptCompletedDelivery(event.deliveryId);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(
              status: AppState.success,
            )));
  }

  _onRateDelivery(
      _RateDelivery event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.rateDelivery(event.arg);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }

  _onTipDelivery(_TipDelivery event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.tipDelivery(event.deliveryId, event.amount);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success)));
  }

  _onDeliveryCost(
      _DeliveryCost event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.deliveryCost(event.arg);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(
            state.copyWith(status: AppState.success, deliveryEstimate: r)));
  }

  _onGetPendingDelivery(
      _GetPendingDelivery event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.getPendingInvitations();
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(
            state.copyWith(status: AppState.success, pendingInvitations: r)));
  }

  _onGetADelivery(
      _GetADelivery event, Emitter<ShipmentHandlerState> emit) async {
    emit(state.copyWith(status: AppState.loading));

    final res = await repo.getADelivery(event.deliveryId, event.owner);
    res.fold(
        (l) => emit(state.copyWith(
            status: AppState.failed, errorMessage: l.errorMessage)),
        (r) => emit(state.copyWith(status: AppState.success, delivery: r)));
  }

  void _onSubscription(_Started event, Emitter<ShipmentHandlerState> emit) {
    socketIO.initialize();

    // socketIO.getCancelledDelivery.
    listener = socketIO.getCancelledDelivery.listen((event) {
      // emit(state.copyWith(newDeliveryEvent: event));
      add(const ShipmentHandlerEvent.getAllDeliveries());
      log(event.toString(), name: 'cancelBloc');
    });
    listener1 = socketIO.getacceptedDelivery.listen((event) {
      emit(state.copyWith(newDeliveryEvent: event));
      add(const ShipmentHandlerEvent.getAllDeliveries());
      log(event.toString(), name: 'getacceptedDeliveryBloc');
    });
    listener2 = socketIO.getdriverCompletedDelivery.listen((event) {
      emit(state.copyWith(newDeliveryEvent: event));
      add(const ShipmentHandlerEvent.getAllDeliveries());
      log(event.toString(), name: 'getdriverCompletedDeliveryBloc');
    });
    listener3 = socketIO.getuserAcceptCompletedDelivery.listen((event) {
      emit(state.copyWith(newDeliveryEvent: event));
      add(const ShipmentHandlerEvent.getAllDeliveriesPendingInvitations());
      log(event.toString(), name: 'getuserAcceptCompletedDeliveryBloc');
    });
    listener4 = socketIO.getnewDeliveryInvitation.listen((event) {
      emit(state.copyWith(invitationEvent: event));
      add(const ShipmentHandlerEvent.getAllDeliveriesPendingInvitations());
      log(event.toString(), name: 'getnewDeliveryInvitationBloc');
    });

    listener6 = socketIO.onConnect.listen((event) {
      log(event.toString(), name: 'onConnectBloc');
    });
    // log(listener5.toString());
  }
}
