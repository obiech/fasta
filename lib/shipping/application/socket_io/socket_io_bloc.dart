import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/shipping/infrastructure/scoket_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_io_event.dart';
part 'socket_io_state.dart';
part 'socket_io_bloc.freezed.dart';

class SocketIoBloc extends Bloc<SocketIoEvent, SocketIoState> {
  final ShippingSocketImpl repo;
  SocketIoBloc(this.repo) : super(SocketIoState.initial()) {
    on<_Started>(_onSubscription);
  }
  void _onSubscription(_Started event, Emitter<SocketIoState> emit) {
      repo.getCancelledDelivery.listen((event) {
        emit(state.copyWith(delivery: event));
      });
      repo.getacceptedDelivery.listen((event) {
        emit(state.copyWith(delivery: event));
      });
      repo.getdriverCompletedDelivery.listen((event) {
        emit(state.copyWith(delivery: event));
      });
      repo.getuserAcceptCompletedDelivery.listen((event) {
        emit(state.copyWith(delivery: event));
      });
      repo.getnewDeliveryInvitation.listen((event) {
        emit(state.copyWith(invitation: event));
      });
    }
}
