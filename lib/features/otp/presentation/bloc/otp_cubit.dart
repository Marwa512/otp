import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/otp/data/models/verify_model.dart';
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';

class OtpCubit extends Cubit<OtpState> {
  final OtpRepoImp _otpRepoImp;
  OtpCubit(this._otpRepoImp) : super(const OtpInitial(60));
  int _duration = 60;
  String? _userOtp;
  void setUserOtp(String? otp) {
    _userOtp = otp;
  }
 VerifyModel? verifyModel
;  void validateOtp({
    required String countryCode,
    required String phone,
  }) {
    _otpRepoImp
        .verifyOtp(
      countryCode: countryCode,
      otp: _userOtp ?? "",
      phone: phone,
    )
        .then((value) {
verifyModel =value; 
      emit(const VerifyOtpStateSuccess());
    }).catchError((error) {
      if (error is DioException) {
        final errorResponse = error.response?.data;
        final message = errorResponse?['message'] ?? 'Unknown error';
        emit(VerifyOtpStateFailed(message));
      }
    });
  }

  Timer? _timer;
  void startTimer() {
    _duration = 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_duration == 0) {
        timer.cancel();
        emit(const TimeOutState());
      } else {
        _duration--;
        emit(ActivateTimerState(_duration));
      }
    });
  }

  void resendOtp({
    required String countryCode,
    required String phone,
  }) {
    _otpRepoImp.resendOtp(countryCode: countryCode, phone: phone).then((value) {
      emit(ResendOtpStateSuccess(value));
    }).catchError((e) {
      emit(const ResendOtpStateFailed());
    });
  }
}
