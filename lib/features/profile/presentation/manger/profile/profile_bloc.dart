import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opt_page/core/injection/setup_service_locator.dart';
import 'package:opt_page/features/profile/domain/entities/profile_entity.dart';
import '../../../data/repositpries/profile_repo_imp.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileEntity? profileData;
  ProfileBloc() : super(const ProfileState.initial()) {
    on<ProfileEvent>(
      (event, emit) async {
        getIt<ProfileRepoImp>().getProfileData().then((value) {
          profileData = value;

          print("profile $profileData");

          emit(const GetProfileDataSuccess());
        }).catchError((error) {
          print(error.toString());
          emit(const GetProfileDataFailed());
        });
      },
    );
  }
}
