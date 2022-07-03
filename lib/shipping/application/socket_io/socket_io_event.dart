part of '../socket_io/socket_io_bloc.dart';

@freezed
class SocketIoEvent with _$SocketIoEvent {
  const factory SocketIoEvent.started() = _Started;
}