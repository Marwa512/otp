abstract class OtpRepo {
  Future<dynamic> verifyOtp({
    required String countryCode,
    required String phone,
    required String otp,
  });
  Future<dynamic> resendOtp({
    required String countryCode,
    required String phone,
  });
}
