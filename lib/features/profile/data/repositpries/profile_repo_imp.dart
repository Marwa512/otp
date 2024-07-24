import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart';
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart';
import 'package:opt_page/features/profile/domain/entities/profile_entity.dart';
import 'package:opt_page/features/profile/domain/repositories/profile_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/function/setup_service_locator.dart';

@injectable
class ProfileRepoImp implements ProfileRepo {
  final OtpRepoImp _otpRepoImp;

  ProfileRepoImp(this._otpRepoImp);
  ProfileEntity? _profileEntity;
  @override
  Future<ProfileEntity> getProfileData() async {
    await getIt<ProfileLocalData>().getProfile().then((v) {
      _profileEntity = ProfileEntity(
          name: v?[0],
          email: v?[1],
          phone: v?[2],
          datebirth: v?[3],
          image: v?[4]);
      print("profile get $ProfileEntity");
    });

    return ProfileEntity(
      image: _otpRepoImp.verifyModel?.data?.profile!.image ?? _profileEntity!.image,
      datebirth: _otpRepoImp.verifyModel?.data?.profile!.birthdate ?? _profileEntity!.datebirth,
      email: _otpRepoImp.verifyModel?.data?.profile!.email ?? _profileEntity!.email,
      name: _otpRepoImp.verifyModel?.data?.profile!.name ?? _profileEntity!.name,
      phone: _otpRepoImp.verifyModel?.data?.profile!.phone ?? _profileEntity!.phone,
    );
  }
}
