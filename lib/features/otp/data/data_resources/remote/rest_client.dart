import 'package:dio/dio.dart';
import 'package:opt_page/core/utils/endpoints.dart';
import 'package:opt_page/features/otp/data/models/resend_model.dart';
import 'package:opt_page/features/otp/data/models/verify_model.dart';
import 'package:retrofit/http.dart';

part "rest_client.g.dart";

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST(RemoteConfigs.resendOtp)
  Future<ResendModel> resendOtp(@Body() Map<String, dynamic> body);
  @POST(RemoteConfigs.verifyOtp)
  Future<VerifyModel> verifyOtp(@Body() Map<String, dynamic> body);
}
