// Dart imports:
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
// Project imports:
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/errrors/app_exceptions.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers[HttpHeaders.authorizationHeader] = 'Bearer ' +
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpfcWFzaW0wMDFAYW9sLmNvbSIsImlkIjoxLCJpYXQiOjE2NTI3ODg1OTIsImV4cCI6MTY1Mjc5MjE5Mn0.yUWvymyEiaPcBG-3vl847y0v2MvwKOLshARZLyFmj-g';

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
  Future<Response> post(String endpoint, {Map<String, dynamic>? body}) async {
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
