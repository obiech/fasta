// Flutter imports:
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fasta/errrors/app_exceptions.dart';
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
      // log(error.toString());
      // if (error is DioError) {
      //   throw AppException(
      //       code: error.error,
      //       errMessage: error.response?.data['meta']['message']);
      // } else {
      //   throw AppException(errMessage: 'Something went Wrong', code: 0);
      // }
      throw error;
    } else {
      return response;
    }
  }
}
