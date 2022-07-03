import 'dart:async';
import 'dart:developer';

import 'package:fasta/core/server_address.dart';
import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/shipping/infrastructure/models/delivery_dto.dart';
import 'package:fasta/shipping/infrastructure/models/delivery_invitation_dto.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ShippingSocketImpl {
  var _cancelDelivery = StreamController<DeliverySummary>.broadcast();
  final _acceptedDelivery = StreamController<DeliverySummary>.broadcast();
  final _driverCompletedDelivery =
      StreamController<DeliverySummary>.broadcast();
  final _userAcceptCompletedDelivery =
      StreamController<DeliverySummary>.broadcast();
  final _newDeliveryInvitation =
      StreamController<DeliveryInvitation>.broadcast();
  final _onConnectStream = StreamController<String>.broadcast();

  void _addCancelledDelivery(Map<String, dynamic> event) =>
      _cancelDelivery.sink.add(DeliverySummaryDTO.fromMap(event));
  Stream<DeliverySummary> get getCancelledDelivery =>
      _cancelDelivery.stream.asBroadcastStream();
  var b;
  void onConnectEvent() => _onConnectStream.sink.add('fdfdfs');

  Stream<String> get onConnect => _onConnectStream.stream.asBroadcastStream();

  Stream<String> get getOnConnect =>
      _onConnectStream.stream.asBroadcastStream(onListen: (_) {
        log(_.toString(), name: "acceptedDeliveryListendTo");
      });

  void _addacceptedDelivery(Map<String, dynamic> event) =>
      _acceptedDelivery.sink.add(DeliverySummaryDTO.fromMap(event));

  Stream<DeliverySummary> get getacceptedDelivery =>
      _acceptedDelivery.stream.asBroadcastStream(onListen: (_) {
        log(_.toString(), name: "acceptedDeliveryListendTo");
      });

  void _addDriverCompletedDelivery(Map<String, dynamic> event) =>
      _driverCompletedDelivery.sink.add(DeliverySummaryDTO.fromMap(event));
  Stream<DeliverySummary> get getdriverCompletedDelivery =>
      _driverCompletedDelivery.stream.asBroadcastStream(onListen: (_) {
        log(_.toString(), name: "driverCompletedDeliveryListendTo");
      });

  void _adduserAcceptCompletedDelivery(Map<String, dynamic> event) =>
      _userAcceptCompletedDelivery.sink.add(DeliverySummaryDTO.fromMap(event));
  Stream<DeliverySummary> get getuserAcceptCompletedDelivery =>
      _userAcceptCompletedDelivery.stream.asBroadcastStream(onListen: (_) {
        log(_.toString(), name: "userAcceptCompletedDeliveryListendTo");
      });

  void _addnewDeliveryInvitation(Map<String, dynamic> invitation) =>
      _newDeliveryInvitation.sink
          .add(DeliveryInvitationDTO.fromMapTest(invitation));
  Stream<DeliveryInvitation> get getnewDeliveryInvitation =>
      _newDeliveryInvitation.stream.asBroadcastStream(onListen: (_) {
        log(_.toString(), name: "newDeliveryListendTo");
      });

  void initialize() {
    Socket socket = io(
        const ServerAddress().domain,
        OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .setReconnectionDelay(10000)
            .enableReconnection()
            .setQuery(
              {'token': const ServerAddress().token},
            )
            .build());
    socket.connect();
    socket.onConnect((data) {
      log(data.toString(), name: 'onconnect');
      onConnectEvent();
    });
    socket.on('unauthorized', (dynamic data) {
      log('Unauthorized');
    });

    socket.onError(
        (data) => log(data.toString(), name: const ServerAddress().token));
    socket.on("connect_error", (err) {
      log(err.toString()); // prints the message associated with the error
    });
    socket.on("connecting", (err) {
      log(err.toString()); // prints the message associated with the error
    });

    socket.on(ShippingEventName.acceptedDelivery,
        (data) => _addacceptedDelivery(data));

    socket.on(
        ShippingEventName.cancelledDelivery, (data) => _addCancelledDelivery);

    socket.on(ShippingEventName.newDeliveryInvitation,
        ((data) => _addnewDeliveryInvitation(data)));

    socket.on(ShippingEventName.driveryCompletedDelivery,
        (data) => _addDriverCompletedDelivery);

    socket.on(ShippingEventName.userAcceptCompletedDelivery,
        (data) => _adduserAcceptCompletedDelivery);

    socket.onDisconnect((data) => log(data, name: 'onDisconnect'));
  }

  void dispose() {
    _cancelDelivery.close();
    _acceptedDelivery.close();
    _newDeliveryInvitation.close();
    _userAcceptCompletedDelivery.close();
    _driverCompletedDelivery.close();
    _acceptedDelivery.close();
  }
}

class ShippingEventName {
  static const newDeliveryInvitation = 'new-delivery-invitation';
  static const cancelledDelivery = 'cancelled-delivery';
  static const acceptedDelivery = 'accepted-delivery';
  static const driveryCompletedDelivery = 'driver-completed-delivery';
  static const userAcceptCompletedDelivery = 'user-accept-completed-delivery';
}
