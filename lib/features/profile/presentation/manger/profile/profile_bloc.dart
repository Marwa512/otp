import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart';
import 'package:opt_page/features/profile/domain/entities/profile_entity.dart';
import '../../../../../core/function/service_locator.dart';
import '../../../data/repositpries/profile_repo_imp.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  
  final ProfileLocalData _profileLocalData = GetIt.I<ProfileLocalData>();
  ProfileEntity? profileData;
  ProfileBloc() : super(const ProfileState.initial()) {
    
    on<ProfileEvent>(
      (event, emit) async {

        getIt.get<ProfileRepoImp>().getProfileData().then((value) {
          profileData = value;
          
          print("profile $profileData");
          
          emit(const GetProfileDataSuccess());
        }).catchError((error) {

          print(error.toString());
          emit (const GetProfileDataFailed());
        });
      },
    );
  }
}
