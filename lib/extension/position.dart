import 'package:dartz/dartz.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

extension GeoPosition on Position {
  // Method for retrieving the address
  Future<Either<ErrorMessage, Address>> getAddress() async {
    try {
      List<Placemark> p = await placemarkFromCoordinates(latitude, longitude);

      Placemark place = p[0];
      Address currentAddress =
          "${place.name}, ${place.locality}, ${place.postalCode}, ${place.country}";
      return Right(currentAddress);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
