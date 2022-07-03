// Dart imports:
import 'dart:developer';
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
// Project imports:
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/server_address.dart';
import 'package:fasta/errrors/app_exceptions.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ' + const ServerAddress().token;
    log(const ServerAddress().token);
    return super.onRequest(options, handler);
  }
}

class DioClient extends ApiClient<Response> {
  final Dio _plugin = Dio()..interceptors.add(CustomInterceptor());
  DioClient();

  @override
  Future<Response> get(
    String endpoint,
  ) async {
    Response response = await _plugin.get(endpoint);
    return responseOrError(response);
  }

  @override
  Future<Response> patch(String endpoint, {Map<String, dynamic>? body}) async {
    Response response =
        await _plugin.patch(endpoint, data: body, options: Options());
    return responseOrError(response);
  }

  @override
  Future<Response> post(String endpoint, {dynamic body}) async {
    Response response = await _plugin.post(endpoint, data: body);
    return responseOrError(response);
  }

  @override
  Future<Response> put(String endpoint, {Map<String, dynamic>? body}) async {
    Response response = await _plugin.put(endpoint, data: body);
    return responseOrError(response);
  }

  Response responseOrError(Response response) {
    return throwIfNot(
        response: response,
        condition: (response.statusCode.toString().trim().startsWith('2')),
        error: AppException(
            code: response.statusCode, errMessage: response.statusMessage));
  }
}
