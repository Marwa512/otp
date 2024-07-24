import 'package:get_it/get_it.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart';
import 'package:opt_page/features/otp/data/models/verify_model.dart';
import 'package:opt_page/features/otp/domain/repository/otp_repo.dart';
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart';

class OtpRepoImp implements OtpRepo {
  final RestClient _restClient = GetIt.instance<RestClient>();
  final ProfileLocalData _profileLocalData = GetIt.I<ProfileLocalData>();

  @override
  Future resendOtp({required String countryCode, required String phone}) async {
    try {
      final response = await _restClient.resendOtp({
        "country_code": countryCode,
        "phone": phone,
      });
      return response.message;
    } catch (e) {
      rethrow;
    }
  }

  VerifyModel? verifyModel;

  @override
  Future verifyOtp(
      {required String countryCode,
      required String phone,
      required String otp}) async {
    try {
      final response = await _restClient.verifyOtp({
        "country_code": countryCode,
        "phone": phone,
        "otp": otp,
      });
      verifyModel = response;

      _profileLocalData.setProfile(
          name: response.data!.profile?.name ?? " ",
          date: response.data!.profile?.birthdate ?? "",
          email: response.data!.profile?.email ?? "",
          phone: response.data!.profile?.phone ?? "",
          image: response.data!.profile?.image ?? "");
        
      return verifyModel;
    } catch (e) {
      rethrow;
    }
  }
}
