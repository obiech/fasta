part of '../socket_io/socket_io_bloc.dart';

@freezed
class SocketIoState with _$SocketIoState {
  factory SocketIoState.initial() => SocketIoState();
  factory SocketIoState(
      {DeliveryInvitation? invitation,
      DeliverySummary? delivery}) = _SocketIoState;
}
