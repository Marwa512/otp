import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:opt_page/core/utils/endpoints.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/dio_client.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart';

import '../../features/otp/data/data_resources/local/shared_prefrences.dart';

@module
abstract class RegisterModule {
  @Singleton()
  Dio get buildDio => buildDioClient(RemoteConfigs.baseUrl);

  @Singleton()
  RestClient get restClient => RestClient(buildDio);

  @Singleton()
  SharedPreferencesProvider get sharedPref => SharedPreferencesProvider();
}
