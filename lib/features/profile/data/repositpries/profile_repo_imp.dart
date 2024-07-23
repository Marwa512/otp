import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart';
import 'package:opt_page/features/profile/domain/entities/profile_entity.dart';
import 'package:opt_page/features/profile/domain/repositories/profile_repo.dart';

class ProfileRepoImp implements ProfileRepo {
  final OtpRepoImp _otpRepoImp;

  ProfileRepoImp(this._otpRepoImp);
  @override
  Future<ProfileEntity> getProfileData() async {
    return ProfileEntity(
      image: _otpRepoImp.verifyModel?.data?.profile!.image ?? "",
      datebirth: _otpRepoImp.verifyModel?.data?.profile!.birthdate ?? "",
      email: _otpRepoImp.verifyModel?.data?.profile!.email ?? "",
      name: _otpRepoImp.verifyModel?.data?.profile!.name ?? "",
      phone: _otpRepoImp.verifyModel?.data?.profile!.phone ?? "",
    );
  }
}
