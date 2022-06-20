// Flutter imports:
import 'package:flutter/cupertino.dart';

abstract class ApiClient<T> {
  Future<T> patch(String endpoint, {Map<String, dynamic>? body});
  Future<T> post(
    String endpoint, {
    dynamic body,
  });
  Future<T> put(String endpoint, {Map<String, dynamic>? body});
  Future<T> get(String endpoint);
  @visibleForTesting
  @protected
  @mustCallSuper
  T throwIfNot(
      {required T response,
      required bool condition,
      required Exception error}) {
    if (!condition) {
      throw error;
    } else {
      return response;
    }
  }
}
