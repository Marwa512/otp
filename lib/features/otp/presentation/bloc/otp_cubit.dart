import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpInitial(60));
  int _duration = 60;
  final String _otp = '1234';
  String? _userOtp;
  void setUserOtp(String? otp) {
    _userOtp = otp;
  }

  void validateOtp() {
    if (_userOtp == null) {
      emit(const OtpInvalid());
    } else if (_userOtp!.length == 4 && _userOtp == _otp) {
      emit(OtpValid(_userOtp!));
    } else {
      emit(const OtpInvalid());
    }
  }

  Timer? _timer;
  startTimer([int? index]) {
    _duration = 60;
    if (index != null) {
      emit(const ActivateTimerState(60));
    } else {
      emit(const ActivateTimerState(60));
    }
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
}
