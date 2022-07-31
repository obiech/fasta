import 'package:dio/dio.dart';

class AppError {
  final String errorMessage;

  AppError(this.errorMessage);
  factory AppError.empty() => AppError('Unknown Error');

  @override
  String toString() => 'AppError $errorMessage';
}

extension ExceptionToErrorX on DioError {
  AppError get fromDioError {
    return AppError(response?.data['meta']['message']??'UnKnown Error Occured.');
  }
}
