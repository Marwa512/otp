import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Dio buildDioClient(String base) {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: base, contentType: "application/json",
      //  headers: {
      //   'Content-Type': 'application/json',
      //   'X-SECRET-KEY': "GOLDEN-5mm0jUsfOwCrAANQ6X_uoJkexlL",
      //   "X-Language": "ar"
      // }
    );
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        if (kDebugMode) {
          print("Request: ${options.method} ${options.uri}");
        }
        if (kDebugMode) {
          print("Headers: ${options.headers}");
        }
        if (kDebugMode) {
          print("Data: ${options.data}");
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        if (kDebugMode) {
          print("Response: ${response.statusCode} ${response.data}");
        }
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        if (kDebugMode) {
          print("Error: ${e.response?.statusCode} ${e.response?.data}");
        }
        return handler.next(e);
      },
    ),
  );

  return dio;
}
