import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:opt_page/features/profile/domain/entities/profile_entity.dart';
import '../../../data/repositpries/profile_repo_imp.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileEntity? profileData;
  final ProfileRepoImp? _profileRepoImp;
  ProfileBloc(this._profileRepoImp) : super(const ProfileState.initial()) {
    on<ProfileEvent>(
      (event, emit) async {
        _profileRepoImp!.getProfileData().then((value) {
          profileData = value;

          if (kDebugMode) {
            print("profile $profileData");
          }

          emit(const GetProfileDataSuccess());
        }).catchError((error) {
          if (kDebugMode) {
            print(error.toString());
          }
          emit(const GetProfileDataFailed());
        });
      },
    );
  }
}
