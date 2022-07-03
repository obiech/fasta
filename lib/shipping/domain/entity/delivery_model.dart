import 'package:fasta/profile/domain/entity/user.dart';

@Deprecated('Replace with Trip')
class DeliverySummary {
 final String id,
      userId,
      driverId,
      vehicleType,
      status,
      cost,
      distance,
      fromAddress,
      toAddress,
      endTime,
      duration,
      imageUrl,
      category;
  final bool priority;

  DeliverySummary({required this.id,
      required this.userId,
      required this.driverId,
      required this.vehicleType,
      required this.status,
      required this.cost,
      required this.distance,
      required this.fromAddress,
      required this.toAddress,
      required this.endTime,
      required this.imageUrl,
      required this.priority,
      required this.category,
      required this.duration,});
}
class DeliveryModel {
 
  final Sender sender;
  final Receiver receiver;
  final Tip tip;
  final Rating rating;
  final Vehicle? vechicle;
  final User? rider;
  final User user;
  final DeliverySummary deliverySummary;

  DeliveryModel(
      {required this.deliverySummary,
      required this.rider,
      required this.user,
      required this.sender,
      required this.receiver,
      required this.tip,
      required this.rating,
      required this.vechicle,});
}

class Sender {
  final String name, phoneNumber, items, weight, itemState;

  Sender(
      {required this.name,
      required this.phoneNumber,
      required this.items,
      required this.weight,
      required this.itemState});
}

class Receiver {
  final String name, phoneNumber;

  Receiver(this.name, this.phoneNumber);
}

class Tip {
  final String amount;

  Tip(this.amount);
}

class Rating {
  final String comment, rating;

  Rating(this.comment, this.rating);
}

class Vehicle {
  final String id,
      ownerId,
      name,
      description,
      type,
      vehicleNumber,
      model,
      make,
      year,
      color,
      enginePower;
  final bool active;
  final List images;

  Vehicle(
      {required this.id,
      required this.ownerId,
      required this.name,
      required this.description,
      required this.type,
      required this.vehicleNumber,
      required this.model,
      required this.make,
      required this.year,
      required this.color,
      required this.enginePower,
      required this.active,
      required this.images});
}
