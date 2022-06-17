class AppError {
  final String errorMessage;

  AppError(this.errorMessage);
  factory AppError.empty() => AppError('Unknown Error');
}
