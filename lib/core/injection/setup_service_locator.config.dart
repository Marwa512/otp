// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:opt_page/core/injection/register_module.dart' as _i15;
import 'package:opt_page/features/otp/data/data_resources/local/shared_prefrences.dart'
    as _i7;
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart'
    as _i6;
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart' as _i8;
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart' as _i12;
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart'
    as _i3;
import 'package:opt_page/features/profile/data/repositpries/profile_repo_imp.dart'
    as _i13;
import 'package:opt_page/features/profile/domain/repositories/profile_repo.dart'
    as _i10;
import 'package:opt_page/features/profile/domain/usecases/get_profile_usecase.dart'
    as _i9;
import 'package:opt_page/features/profile/presentation/manger/profile/profile_bloc.dart'
    as _i14;
import 'package:opt_page/shared/data/data_resources/local_data.dart' as _i4;
import 'package:opt_page/shared/presentation/app/app_bloc.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.ProfileLocalData>(() => _i3.ProfileLocalData());
    gh.factory<_i4.SharedPreferencesProvider>(
        () => _i4.SharedPreferencesProvider());
    gh.singleton<_i5.Dio>(() => registerModule.buildDio);
    gh.singleton<_i6.RestClient>(() => registerModule.restClient);
    gh.singleton<_i7.SharedPreferencesProvider>(
        () => registerModule.sharedPref);
    gh.factory<_i8.OtpRepoImp>(() => _i8.OtpRepoImp(
          gh<_i6.RestClient>(),
          gh<_i3.ProfileLocalData>(),
        ));
    gh.factory<_i9.GetProfileUsecase>(
        () => _i9.GetProfileUsecase(gh<_i10.ProfileRepo>()));
    gh.factory<_i11.AppBloc>(
        () => _i11.AppBloc(gh<_i4.SharedPreferencesProvider>()));
    gh.factory<_i12.OtpCubit>(() => _i12.OtpCubit(gh<_i8.OtpRepoImp>()));
    gh.factory<_i13.ProfileRepoImp>(() => _i13.ProfileRepoImp(
          gh<_i8.OtpRepoImp>(),
          gh<_i3.ProfileLocalData>(),
        ));
    gh.factory<_i14.ProfileBloc>(
        () => _i14.ProfileBloc(gh<_i13.ProfileRepoImp>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
