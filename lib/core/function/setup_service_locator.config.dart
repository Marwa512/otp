// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:opt_page/core/function/register_module.dart' as _i543;
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart'
    as _i0;
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart'
    as _i199;
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart'
    as _i642;
import 'package:opt_page/features/profile/data/repositpries/profile_repo_imp.dart'
    as _i562;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i199.OtpRepoImp>(() => _i199.OtpRepoImp());
    gh.factory<_i642.ProfileLocalData>(() => _i642.ProfileLocalData());
    gh.lazySingleton<_i361.Dio>(() => registerModule.buildDio());
    gh.lazySingleton<_i0.RestClient>(() => registerModule.restClient());
    gh.factory<_i562.ProfileRepoImp>(
        () => _i562.ProfileRepoImp(gh<_i199.OtpRepoImp>()));
    return this;
  }
}

class _$RegisterModule extends _i543.RegisterModule {}
