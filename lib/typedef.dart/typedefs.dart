import 'package:fasta/errrors/app_error.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dartz/dartz.dart';

typedef CurrentPosition = Position;
typedef ErrorMessage = String;
typedef Address = String;

typedef ErrorOr<T> = Future<Either<AppError, T>>;
