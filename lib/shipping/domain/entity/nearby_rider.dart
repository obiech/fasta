
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearbyRider {
  final double latitude, longitude;
  final String? type;

  NearbyRider(this.latitude, this.longitude, this.type);

  factory NearbyRider.fromMap(Map<String, dynamic> map) {
    return NearbyRider(map['latitude'], map['longitude'], map['type']);
  }

  Future<Marker> get toMarker async {
    // Create Location Marker
    String vehicleType = '';
    switch (type!.toLowerCase().trim()) {
      case 'bike':
        vehicleType = 'assets/bike.png';
        break;
      case 'bus':
        vehicleType = 'assets/delivery-van.png';
        break;
      case 'car':
        vehicleType = 'assets/car.png';
        break;
      default:
        vehicleType = 'assets/bike.png';
    }
    final image = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), vehicleType);
    Marker marker = Marker(
      markerId: MarkerId(toString()),
      position: LatLng(latitude, longitude),
      // icon: image,
      icon:image
    );
    return marker;
  }
}

// extension ToMarkers on List<NearbyRider> {
//   Set<Marker> get toMarkers {
//     Set<Marker> markers = {};
//     // this.f
//     // try {
//     //   for (NearbyRider a in this) {
//     //     a.toMarker.then((value) => markers.add(value));
//     //   }
//     //   return markers;
//     // } catch (e) {
//     //   return {};
//     // } 
//     // this.forEach((element) { })
//   }
// }
