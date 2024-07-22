import 'package:dio/dio.dart';

Dio buildDioClient(String base) {
  final dio = Dio()
    ..options =
        BaseOptions(baseUrl: base, contentType: "application/json", headers: {
      'Content-Type': 'application/json',
      'X-SECRET-KEY': "GOLDEN-5mm0jUsfOwCrAANQ6X_uoJkexlL",
      "X-Language": "ar"
    });
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        print("Request: ${options.method} ${options.uri}");
        print("Headers: ${options.headers}");
        print("Data: ${options.data}");
        return handler.next(options); 
      },
      onResponse: (response, handler) {
        print("Response: ${response.statusCode} ${response.data}");
        return handler.next(response); 
      },
      onError: (DioError e, handler) {
        print("Error: ${e.response?.statusCode} ${e.response?.data}");
        return handler.next(e); 
      },
    ),
  );

  return dio;
}
