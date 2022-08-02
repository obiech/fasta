import 'package:dartz/dartz.dart';
import 'package:fasta/secrets.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coordinate {
  final double latitude, longitude;
  final String parentAddress;

  Coordinate(
      {required this.latitude,
      required this.longitude,
      required this.parentAddress});
  @override
  String toString() => '($latitude, $longitude)';

  /// Create Location Marker
  Marker getLocationMarkers({required String name}) {
    // Create Location Marker
    Marker marker = Marker(
      markerId: MarkerId(toString()),
      position: LatLng(latitude, longitude),
      infoWindow: InfoWindow(
        title: '$name ${toString()}',
        snippet: parentAddress,
      ),
      icon: BitmapDescriptor.defaultMarker,
    );
    return marker;
  }

  // Create the polylines for showing the route between two places
  // [this] should be the startCoordinate
  Future<Either<ErrorMessage, List<LatLng>>> createPolylines(
    Coordinate destinationCoordinate,
  ) async {
    PolylinePoints polylinePoints = PolylinePoints();
    List<LatLng> polylineCoordinates = [];
    try {
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        Secrets.aPI_KEY, // Google Maps API Key
        PointLatLng(latitude, longitude),
        
        PointLatLng(
            destinationCoordinate.latitude, destinationCoordinate.longitude),
        travelMode: TravelMode.driving,
      );
      if (result.points.isNotEmpty) {
        for (PointLatLng point in result.points) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        }
        return Right(polylineCoordinates);
      }
      return const Left('');
    } catch (e) {
      return Left(e.toString());
    }
  }
}
