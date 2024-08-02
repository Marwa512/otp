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
import 'package:opt_page/core/injection/register_module.dart' as _i649;
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart'
    as _i0;
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart'
    as _i199;
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart'
    as _i452;
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart'
    as _i642;
import 'package:opt_page/features/profile/data/repositpries/profile_repo_imp.dart'
    as _i562;
import 'package:opt_page/features/profile/domain/repositories/profile_repo.dart'
    as _i322;
import 'package:opt_page/features/profile/domain/usecases/get_profile_usecase.dart'
    as _i112;
import 'package:opt_page/features/profile/presentation/manger/profile/profile_bloc.dart'
    as _i994;
import 'package:opt_page/shared/data/data_resources/local_data.dart' as _i839;
import 'package:opt_page/shared/presentation/app/app_bloc.dart' as _i527;

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
    gh.factory<_i642.ProfileLocalData>(() => _i642.ProfileLocalData());
    gh.singleton<_i361.Dio>(() => registerModule.buildDio);
    gh.singleton<_i0.RestClient>(() => registerModule.restClient);
    gh.singleton<_i839.SharedPreferencesProvider>(
        () => registerModule.sharedPref);
    gh.factory<_i199.OtpRepoImp>(() => _i199.OtpRepoImp(
          gh<_i0.RestClient>(),
          gh<_i642.ProfileLocalData>(),
        ));
    gh.factory<_i112.GetProfileUsecase>(
        () => _i112.GetProfileUsecase(gh<_i322.ProfileRepo>()));
    gh.factory<_i527.AppBloc>(
        () => _i527.AppBloc(gh<_i839.SharedPreferencesProvider>()));
    gh.factory<_i452.OtpCubit>(() => _i452.OtpCubit(gh<_i199.OtpRepoImp>()));
    gh.factory<_i562.ProfileRepoImp>(() => _i562.ProfileRepoImp(
          gh<_i199.OtpRepoImp>(),
          gh<_i642.ProfileLocalData>(),
        ));
    gh.factory<_i994.ProfileBloc>(
        () => _i994.ProfileBloc(gh<_i562.ProfileRepoImp>()));
    return this;
  }
}

class _$RegisterModule extends _i649.RegisterModule {}
