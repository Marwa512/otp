import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:opt_page/core/utils/endpoints.dart';
import 'package:opt_page/features/map/data/data_resources/remote/map_client.dart';
import 'package:opt_page/shared/data/data_resources/dio_client.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart';

import '../../shared/data/data_resources/local_data.dart';

@module
abstract class RegisterModule {
  @Singleton()
  Dio get buildDio => buildDioClient(RemoteConfigs.mapBaseUrl);

  @Singleton()
  RestClient get restClient => RestClient(buildDio);

  @Singleton()
  SharedPreferencesProvider get sharedPref => SharedPreferencesProvider();

  @singleton
  GooglePlacesApi get googlePlacesApi => GooglePlacesApi(buildDio);
}
