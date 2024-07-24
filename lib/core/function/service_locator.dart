import 'package:get_it/get_it.dart';
import 'package:opt_page/core/utils/endpoints.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/dio_client.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart';
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart';
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart';
import 'package:opt_page/features/profile/data/repositpries/profile_repo_imp.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  final dio=buildDioClient(RemoteConfigs.baseUrl);
  getIt.registerLazySingleton<RestClient>(() => RestClient(dio));
  getIt.registerLazySingleton<OtpRepoImp>( () => OtpRepoImp());
  getIt.registerLazySingleton<ProfileRepoImp>(()=> ProfileRepoImp(getIt.get<OtpRepoImp>()));
    getIt.registerLazySingleton<ProfileLocalData>( () => ProfileLocalData());

}