import 'dart:math';

import 'package:fasta/colors/colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

extension GeoLatLng on List<LatLng> {
  String calculateDistance() {
    double totalDistance = 0.0;

    // Calculating the total distance by adding the distance
    // between small segments
    for (int i = 0; i < length - 1; i++) {
      totalDistance += _coordinateDistance(
        this[i].latitude,
        this[i].longitude,
        this[i + 1].latitude,
        this[i + 1].longitude,
      );
    }
    return totalDistance.toStringAsFixed(2);
  }

  Map<PolylineId, Polyline> drawPolyPointsLine() {
    Map<PolylineId, Polyline> polylines = {};
    PolylineId id = const PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: FastaColors.alert,
      points: this,
      width: 3,
    );
    polylines[id] = polyline;
    return polylines;
  }

  // Calculating the distance between the start and the end positions
  // with a straight path, without considering any route
// double distanceInMeters = await Geolocator.bearingBetween(
//     startLatitude,
//     startLongitude,
//     destinationLatitude,
//     destinationLongitude,
//   );
  // Formula for calculating distance between two coordinates
  // https://stackoverflow.com/a/54138876/11910277
  double _coordinateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }
}
