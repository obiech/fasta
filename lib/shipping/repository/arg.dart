import 'package:fasta/extension/string.dart';
import 'package:fasta/shipping/domain/entity/coordinate.dart';
import 'package:geolocator/geolocator.dart';

class CreateShipmentArg {
  CreateShipmentArg({
    // required this.email,
    required this.senderName,
    required this.pickUpAddress,
    required this.phoneNumber,
    required this.pickUpTime,
    required this.deliveryPoint,
    required this.receiversName,
    required this.receieversNumber,
    required this.itemName,
    required this.qty,
    required this.value,
    required this.weight,
    required this.state,
    required this.description,
    required this.image,
    required this.category,
    required this.status,
    required this.vechicleType,
    this.priority = 1,
  });
  final String vechicleType,
      status,
      category,
      image,
      description,
      state,
      weight,
      value,
      qty,
      itemName,
      receieversNumber,
      receiversName,
      deliveryPoint,
      pickUpTime,
      phoneNumber,
      pickUpAddress,
      senderName;
  // email;
  final int priority;
  factory CreateShipmentArg.fromModels(
    AboutGoods about,
    VechicleType vechicleType,
    SendersInfoArg sendersInfo,
    ItemInfoArg itemInfo,
  ) {
    return CreateShipmentArg(
        // email: email,
        senderName: sendersInfo.sendersName,
        pickUpAddress: sendersInfo.pickupAddress,
        phoneNumber: sendersInfo.sendersPhonNumber,
        pickUpTime: sendersInfo.pickUpTime,
        deliveryPoint: sendersInfo.deliveryPoint,
        receiversName: sendersInfo.receiversName,
        receieversNumber: sendersInfo.receiversPhoneNumber,
        itemName: itemInfo.itemName,
        qty: itemInfo.quantity,
        value: itemInfo.value,
        weight: itemInfo.weight,
        state: itemInfo.state,
        description: itemInfo.description,
        image: itemInfo.image,
        category: about.category,
        status: 'Ongoing',
        vechicleType: vechicleType.vehicle);
  }

  Future<Map<String, dynamic>> toMap() async {
    // final Position position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);
    // TODO FIX
    final from = await pickUpAddress.getCoordinateFromAddress();
    final to = await deliveryPoint.getCoordinateFromAddress();

    // final from = Coordinate(
    //     latitude: position.latitude,
    //     longitude: position.longitude,
    //     parentAddress: 'parentAddress');
    // final to =Coordinate(
    //     latitude: position.latitude,
    //     longitude: position.longitude,
    //     parentAddress: 'parentAddress');

    return {
      // 'email': email,
      'senderName': senderName,
      // TODO FIX
      'fromAddress': pickUpAddress,
      'senderPhoneNumber': phoneNumber,
      // 'pickup_time': pickUpTime,
      // 'delivery_priority': 1,
      'toAddress': deliveryPoint,
      'recieverName': receiversName,
      'recieverPhoneNumber': receieversNumber,
      // 'senderName': senderName,
      'items': itemName,
      // 'qty': qty,
      // 'value': value,
      'weight': weight + ' kg',
      // 'description_details': description,
      'imageUrl': image,
      // [fragile, non-fragile, broken, missing, damaged, unavailable, glassy, unspecified]","error":true}})
      'itemState': 'unspecified',
      // TODO VECHICLE TYPE [bike, car, van, bus, truck]
      'vehicleType': vechicleType,
      'priority': true,
      'fromLatitude': from.latitude,
      'fromLongitude': from.longitude,
      'toLatitude': to.latitude,
      'toLongitude': to.longitude,
    };
  }

  CreateShipmentArg copyWith(String? secureUrl) {
    return CreateShipmentArg(
        // email: email,
        senderName: senderName,
        pickUpAddress: pickUpAddress,
        phoneNumber: phoneNumber,
        pickUpTime: pickUpTime,
        deliveryPoint: deliveryPoint,
        receiversName: receiversName,
        receieversNumber: receieversNumber,
        itemName: itemName,
        qty: qty,
        value: value,
        weight: weight,
        state: state,
        description: description,
        image: secureUrl ?? image,
        category: category,
        status: status,
        vechicleType: vechicleType);
  }
}

class AboutGoods {
  final String category;

  AboutGoods(this.category);
}

class VechicleType {
  final String vehicle;

  VechicleType(this.vehicle);
}

class SendersInfoArg {
  final String pickupAddress,
      sendersName,
      sendersPhonNumber,
      pickUpTime,
      priority,
      deliveryPoint,
      receiversName,
      receiversPhoneNumber;

  SendersInfoArg(
      {required this.pickupAddress,
      required this.sendersName,
      required this.sendersPhonNumber,
      required this.pickUpTime,
      required this.priority,
      required this.deliveryPoint,
      required this.receiversName,
      required this.receiversPhoneNumber});
}

class ItemInfoArg {
  final String itemName, quantity, value, weight, state, description, image;

  ItemInfoArg(
      {required this.itemName,
      required this.quantity,
      required this.value,
      required this.weight,
      required this.state,
      required this.description,
      required this.image});
}

class CreateTripArg {
  final String from,
      to,
      kilometer,
      distance,
      price,
      driverName,
      phoneNumber,
      email,
      vechicleNumber,
      status;

  CreateTripArg(
      {required this.from,
      required this.to,
      required this.kilometer,
      required this.distance,
      required this.price,
      required this.driverName,
      required this.phoneNumber,
      required this.email,
      required this.vechicleNumber,
      required this.status});

  Map<String, dynamic> toMap() {
    return {
      "loc_from": from,
      "loc_to": to,
      "kilometer": kilometer,
      "price": price,
      "driver_name": driverName,
      "phone_num": phoneNumber,
      "email": email,
      "distance": distance,
      "vehicle_number": vechicleNumber,
      "status": status
    };
  }
}

class RateDeliveryArg {
  final String deliveryId, rating, comment;

  RateDeliveryArg({
    required this.deliveryId,
    required this.rating,
    required this.comment,
  });
}

class DeliveryCostArg {
  final String fromLat, fromLng, toLnt, toLng, vehicleType;
  final bool priority;

  DeliveryCostArg(
      {required this.fromLat,
      required this.fromLng,
      required this.toLnt,
      required this.toLng,
      required this.vehicleType,
      required this.priority});

  Map<String, dynamic> toMap() {
    // final to =
    return {
      'fromLatitude': fromLat,
      'fromLongitude': fromLng,
      'toLatitude': toLnt,
      'toLongitude': toLng,
      'vehicleType': vehicleType,
      'priority': true,
    };
  }

  // factory  DeliveryCostArg.fromAddress(String to, String from) {
  //   final toAddress = to.getCoordinateFromAddress();
  //   final fromAddress = await from.getCoordinateFromAddress();
  //       return DeliveryCostArg(fromLat: fromAddress.to, fromLng: fromLng, toLnt: toLnt, toLng: toLng, vehicleType: vehicleType, priority: priority)
  // }
}
class LocationPointArg {
  final String to, from;

  LocationPointArg(this.to, this.from);
}