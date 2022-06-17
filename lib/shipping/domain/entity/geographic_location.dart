import 'package:fasta/shipping/domain/entity/coordinate.dart';

class GeographicLocation {
  final double southWestLatitude,
      southWestLongitude,
      northEastLatitude,
      northEastLongitude;

  GeographicLocation(
      {required this.southWestLatitude,
      required this.southWestLongitude,
      required this.northEastLatitude,
      required this.northEastLongitude});

  /// This construtor is used to set the map view to ensure the start and destination
  /// polylines are shown
  factory GeographicLocation.fromCoordinates(
      {required Coordinate destinationCoordinates,
      required Coordinate startCoordinates}) {
    // Calculating to check that the position relative
    // to the frame, and pan & zoom the camera accordingly.
    double southWestLatitude =
        (startCoordinates.latitude <= destinationCoordinates.latitude)
            ? startCoordinates.latitude
            : destinationCoordinates.latitude;
    double southWestLongitude =
        (startCoordinates.longitude <= destinationCoordinates.longitude)
            ? startCoordinates.longitude
            : destinationCoordinates.longitude;
    double northEastLatitude =
        (startCoordinates.latitude <= destinationCoordinates.latitude)
            ? destinationCoordinates.latitude
            : startCoordinates.latitude;
    double northEastLongitude =
        (startCoordinates.longitude <= destinationCoordinates.longitude)
            ? destinationCoordinates.longitude
            : startCoordinates.longitude;

    return GeographicLocation(
        southWestLatitude: southWestLatitude,
        southWestLongitude: southWestLongitude,
        northEastLatitude: northEastLatitude,
        northEastLongitude: northEastLongitude);
  }
}
