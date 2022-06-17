class VehicleArg {
  final String name,
      description,
      type,
      number,
      model,
      make,
      year,
      color,
      enginePower;

  VehicleArg(
      {required this.name,
      required this.description,
      required this.type,
      required this.number,
      required this.model,
      required this.make,
      required this.year,
      required this.color,
      required this.enginePower});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'type': type,
      'vehicleNumber': number,
      'model': model,
      'vehicleMake': make,
      'vehicleYear': year,
      'color': color,
      'enginePower': enginePower,
    };
  }
}
