import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:opt_page/core/utils/endpoints.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/dio_client.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio buildDio() => buildDioClient(RemoteConfigs.baseUrl);

  @lazySingleton
  RestClient restClient()=> RestClient(buildDio());
}