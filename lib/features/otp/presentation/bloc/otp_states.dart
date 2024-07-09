import 'package:equatable/equatable.dart';

sealed class OtpState extends Equatable {
  const OtpState();

  @override
  List<Object?> get props => [];
}

class OtpInitial extends OtpState {
  final int duration;

  const OtpInitial(this.duration);

  @override
  List<Object?> get props => [duration];
}

class ActivateTimerState extends OtpState {
  final int duration;

  const ActivateTimerState(this.duration);

  @override
  List<Object?> get props => [duration];
}

class TimeOutState extends OtpState {
  const TimeOutState();

  @override
  List<Object?> get props => [];
}
class OtpValid extends OtpState {
  final String otp;

  const OtpValid(this.otp);

  @override
  List<Object?> get props => [otp];
}
class OtpInvalid extends OtpState {
  const OtpInvalid();
}