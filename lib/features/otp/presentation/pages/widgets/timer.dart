import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';
import 'package:easy_localization/easy_localization.dart';
class BuildTimer extends StatelessWidget {
  const BuildTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpCubit, OtpState>(
      buildWhen: (_, current) =>
          current is TimeOutState || current is ActivateTimerState,
      builder: (context, state) {
        return Row(
          children: [
            TextButton(
              onPressed: () {
                context.read<OtpCubit>().startTimer(60);
              },
              child: Text(
                state is ActivateTimerState
                    ? "   ${state.duration} ${tr("sec")} " 
                    : tr("send"),
                style: const TextStyle(
                  color: Color(0xff2c1d65),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
