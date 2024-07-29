// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:opt_page/core/injection/register_module.dart' as _i14;
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart'
    as _i5;
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart' as _i7;
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart' as _i11;
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart'
    as _i3;
import 'package:opt_page/features/profile/data/repositpries/profile_repo_imp.dart'
    as _i12;
import 'package:opt_page/features/profile/domain/repositories/profile_repo.dart'
    as _i9;
import 'package:opt_page/features/profile/domain/usecases/get_profile_usecase.dart'
    as _i8;
import 'package:opt_page/features/profile/presentation/manger/profile/profile_bloc.dart'
    as _i13;
import 'package:opt_page/shared/data/data_resources/local_data.dart' as _i6;
import 'package:opt_page/shared/presentation/app/app_bloc.dart' as _i10;

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
    gh.singleton<_i4.Dio>(() => registerModule.buildDio);
    gh.singleton<_i5.RestClient>(() => registerModule.restClient);
    gh.singleton<_i6.SharedPreferencesProvider>(
        () => registerModule.sharedPref);
    gh.factory<_i7.OtpRepoImp>(() => _i7.OtpRepoImp(
          gh<_i5.RestClient>(),
          gh<_i3.ProfileLocalData>(),
        ));
    gh.factory<_i8.GetProfileUsecase>(
        () => _i8.GetProfileUsecase(gh<_i9.ProfileRepo>()));
    gh.factory<_i10.AppBloc>(
        () => _i10.AppBloc(gh<_i6.SharedPreferencesProvider>()));
    gh.factory<_i11.OtpCubit>(() => _i11.OtpCubit(gh<_i7.OtpRepoImp>()));
    gh.factory<_i12.ProfileRepoImp>(() => _i12.ProfileRepoImp(
          gh<_i7.OtpRepoImp>(),
          gh<_i3.ProfileLocalData>(),
        ));
    gh.factory<_i13.ProfileBloc>(
        () => _i13.ProfileBloc(gh<_i12.ProfileRepoImp>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
