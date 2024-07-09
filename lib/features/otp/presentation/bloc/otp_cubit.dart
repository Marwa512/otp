import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpInitial(60));
  int _duration = 60;
  final String _otp = '1234';
  void validateOtp(String otp) {
    if (otp.length == 4 && _otp == otp) {
      emit(OtpValid(otp));
    } else {
      emit(const OtpInvalid());
    }
  }

  Timer? _timer;
  startTimer([int? index]) {
    _duration = 60;
    // Wakelock.enable();
    if (index != null) {
      emit(const ActivateTimerState(60));
    } else {
      emit(const ActivateTimerState(60));
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_duration == 0) {
        timer.cancel();
        // Wakelock.disable();
        emit(const TimeOutState());
      } else {
        _duration--;
        emit(ActivateTimerState(_duration));
      }
    });
  }
}
