import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/profile/infrastruture/model/users_model.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';

class DeliveryDTO extends DeliveryModel {
  DeliveryDTO({
    required Sender sender,
    required Receiver receiver,
    required Tip tip,
    required Rating rating,
    required Vehicle? vechicle,
    required User? rider,
    required User user,
    required DeliverySummary deliverySummary,
  }) : super(
          sender: sender,
          receiver: receiver,
          deliverySummary: deliverySummary,
          tip: tip,
          rating: rating,
          vechicle: vechicle,
          user: user,
          rider: rider,
        );

  factory DeliveryDTO.fromMap(Map<String, dynamic> map) {
    return DeliveryDTO(
      deliverySummary: DeliverySummaryDTO.fromMap(map),
      sender: SenderDTO.from(map['sender']),
      receiver:
          Receiver(map['receiver']['name'], map['receiver']['phoneNumber']),
      tip: Tip(map['tip']?['amount'] ?? "0.00"),
      rating: Rating(map['rating']?['comment'] ?? '',
          map['rating']?['rating'] ?? ''.toString()),
      vechicle: map['driver'] != null ? VehicleDTO.fromMap(map['vehicle']):null,
      rider: map['driver'] != null ? UserModel.fromMap(map['driver']) : null,
      user: UserModel.fromMap(map['user']),
    );
  }
}

class DeliverySummaryDTO extends DeliverySummary {
  DeliverySummaryDTO(
      {required String id,
      required String userId,
      required String driverId,
      required String vehicleType,
      required String status,
      required String cost,
      required String distance,
      required String fromAddress,
      required String toAddress,
      required String endTime,
      required String imageUrl,
      required bool priority,
      required String category,
      required String duration})
      : super(
            id: id,
            userId: userId,
            driverId: driverId,
            vehicleType: vehicleType,
            status: status,
            cost: cost,
            distance: distance,
            fromAddress: fromAddress,
            toAddress: toAddress,
            endTime: endTime,
            imageUrl: imageUrl,
            priority: priority,
            category: category,
            duration: duration);

  factory DeliverySummaryDTO.fromMap(Map<String, dynamic> map) {
    return DeliverySummaryDTO(
      id: map['id'].toString(),
      userId: map['userId'].toString(),
      driverId: map['driverId'].toString(),
      vehicleType: map['vehicleType'],
      status: map['status'],
      cost: map['cost'],
      distance: map['distance'].toString(),
      fromAddress: map['fromAddress'],
      toAddress: map['toAddress'],
      endTime: map['endTime'] ?? "",
      priority: map['priority'],
      duration: map['probableDuration'].toString(),
      imageUrl: map['imageUrl'],
      category: map['category'] ?? "",
    );
  }

  factory DeliverySummaryDTO.fromMapRider(Map<String, dynamic> map) {
    return DeliverySummaryDTO(
      id: map['deliveryId'].toString(),
      userId: map['id'].toString(),
      driverId: map['delivery']['driverId'].toString(),
      vehicleType: map['delivery']['vehicleType'],
      status: map['status']??'',
      cost: map['delivery']['cost'].toString()+' NGN',
      distance: map['delivery']['distance'].toString()+' Km',
      fromAddress: map['delivery']['fromAddress'],
      toAddress: map['delivery']['toAddress'],
      endTime: map['createdAt'].toString(),
      priority: map['delivery']['priority'],
      duration: map['probableDuration'].toString(),
      imageUrl: map['delivery']['imageUrl'],
      category: map['delivery']['category']??'',
    );
  }
}

class SenderDTO extends Sender {
  SenderDTO(
      {required String name,
      required String phoneNumber,
      required String items,
      required String weight,
      required String itemState})
      : super(
          name: name,
          phoneNumber: phoneNumber,
          items: items,
          weight: weight,
          itemState: itemState,
        );

  factory SenderDTO.from(Map<String, dynamic> map) {
    return SenderDTO(
        name: map['name'],
        phoneNumber: map['phoneNumber'],
        items: map['items'],
        weight: map['weight'],
        itemState: map['itemState']);
  }
}

class VehicleDTO extends Vehicle {
  VehicleDTO(
      {required String id,
      required String ownerId,
      required String name,
      required String description,
      required String type,
      required String vehicleNumber,
      required String model,
      required String make,
      required String year,
      required String color,
      required String enginePower,
      required bool active,
      required List images})
      : super(
          id: id,
          ownerId: ownerId,
          name: name,
          description: description,
          type: type,
          vehicleNumber: vehicleNumber,
          model: model,
          make: make,
          year: year,
          color: color,
          enginePower: enginePower,
          active: active,
          images: images,
        );

  factory VehicleDTO.fromMap(Map<String, dynamic> map) {
    return VehicleDTO(
        id: map['id'].toString(),
        ownerId: map['fleetOwnerId'].toString(),
        name: map['name'],
        description: map['description'],
        type: map['type'],
        vehicleNumber: map['vehicleNumber'],
        model: map['model'],
        make: map['vehicleMake'],
        year: map['vehicleYear'],
        color: map['color'],
        enginePower: map['enginePower'],
        active: map['active'],
        images: map['images']);
  }
}
