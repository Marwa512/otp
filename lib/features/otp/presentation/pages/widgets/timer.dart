import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';
import 'package:easy_localization/easy_localization.dart';

class BuildTimer extends StatelessWidget {
  const BuildTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpCubit, OtpState>(
      listener: (context, state) {
        if (state is ResendOtpStateSuccess) {
          // Get.snackbar("title", state.message);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        return Row(
          children: [
            TextButton(
              onPressed: () {
                context
                    .read<OtpCubit>()
                    .resendOtp(countryCode: '+966', phone: '511111111');
                context.read<OtpCubit>().startTimer();
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
