class AppException implements Exception {
  final String? errMessage;
  final int? code;

  AppException({required this.errMessage, required this.code});

  @override
  String toString() => 'code: $code, Message: $errMessage';
}
