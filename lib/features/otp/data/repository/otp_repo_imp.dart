import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opt_page/features/otp/data/data_resources/remote/rest_client.dart';
import 'package:opt_page/features/otp/data/models/verify_model.dart';
import 'package:opt_page/features/otp/domain/repository/otp_repo.dart';
import 'package:opt_page/features/profile/data/data_resources/profile_local.dart';

@Injectable()
class OtpRepoImp implements OtpRepo {
  final RestClient _restClient;
  final ProfileLocalData _profileLocalData;

  OtpRepoImp(this._restClient, this._profileLocalData);
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
      if (e is DioException) {
        final errorResponse = e.response?.data;
        final message = errorResponse?['message'] ?? 'Unknown error';
        return message;
      } else {
        rethrow;
      }
    }
  }
}
