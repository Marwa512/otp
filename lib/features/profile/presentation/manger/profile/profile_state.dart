part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.getProfileDataSuccess() = GetProfileDataSuccess;
    const factory ProfileState.getProfileDataFailed() = GetProfileDataFailed;

}