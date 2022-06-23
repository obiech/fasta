class CreateShipmentArg {
  CreateShipmentArg({
    required this.email,
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
      senderName,
      email;
  final int priority;
  factory CreateShipmentArg.fromModels(
      AboutGoods about,
      VechicleType vechicleType,
      SendersInfoArg sendersInfo,
      ItemInfoArg itemInfo,
      String email) {
    return CreateShipmentArg(
        email: email,
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

  Map<String, dynamic> toMap() {
    return {
      // 'email': email,
      'senderName': senderName,
      'fromAddress': pickUpAddress,
      'senderPhoneNumber': phoneNumber,
      // 'pickup_time': pickUpTime,
      // 'delivery_priority': 1,
      'toAddress': deliveryPoint,
      'rrecieverName': receiversName,
      'recieverPhoneNumber': receieversNumber,
      // 'senderName': senderName,
      'items': itemName,
      // 'qty': qty,
      // 'value': value,
      'weight': weight, 
      // 'description_details': description,
      'imageUrl': image, 
      'itemState': status,
      'vehicleType': vechicleType,
      'fromLatitude': 0,
      'fromLongitude':0,
      'toLatitude':10,
      'toLongitude':10,

    };
  }

  CreateShipmentArg copyWith(String? secureUrl) {
    return CreateShipmentArg(
        email: email,
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
