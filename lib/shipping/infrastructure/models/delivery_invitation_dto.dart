import 'dart:developer';

import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';

class DeliveryInvitationDTO extends DeliveryInvitation {
  DeliveryInvitationDTO(
      {required int id,
      required int deliveryId,
      required String form,
      required String to,
      required String items,
      required String paymentMethod,
      required String state,
      required String weight,
      required String estTime,
      required this.userId,
      required this.reason,
      required this.createdAt,
      required this.status,
      required this.cost,
      required this.distance,
      required this.probableDuration,
      required bool priority})
      : super(
          id: id,
          deliveryId: deliveryId,
          form: form,
          to: to,
          items: items,
          paymentMethod: paymentMethod,
          state: state,
          weight: weight,
          estTime: estTime,
          priority: priority,
        );

  final int? userId;
  final String? reason, createdAt, status, cost, distance, probableDuration;

  factory DeliveryInvitationDTO.fromMap(Map<String, dynamic> map) {
    map = map['data'][0];
    return DeliveryInvitationDTO(
      id: map['delivery']['id'],
      deliveryId: map['deliveryId'],
      form: map['delivery']['form'],
      to: map['delivery']['to'],
      items: map['delivery']['items'],
      paymentMethod: map['delivery']['paymentMethod'],
      state: map['delivery']['state'],
      weight: map['delivery']['weight'],
      estTime: map['delivery']['estTime'],
      priority: map['delivery']['priority'],
      cost: map['delivery']['cost'],
      distance: map['delivery']['distance'],
      probableDuration: map['delivery']['probableDuration'],
      status: map['status'],
      userId: map['delivery']['userId'],
      createdAt: map['createdAt'],
      reason: map['reason'],
    );
  }
  factory DeliveryInvitationDTO.fromMapTest(Map<String, dynamic> map) {
    // map = map['data'][0];
    log(map.toString());
    return DeliveryInvitationDTO(
      id: map['id']??1,
      deliveryId: map['deliveryId']??1,
      form: map['form']??"",
      to: map['to']??"",
      items: map['items']??"",
      paymentMethod: map['paymentMethod']??"",
      state: map['state']??"",
      weight: map['weight']??"",
      estTime: map['estTime']??"",
      priority: map['priority']??false,
      cost: map['cost']??"",
      distance: map['distance']??"",
      probableDuration: map['probableDuration']??"",
      status: map['status']??"",
      userId: map['userId']??1,
      createdAt: map['createdAt']??"",
      reason: map['reason']??"",
    );
  }
}
