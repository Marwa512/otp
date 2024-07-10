import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';
import 'package:opt_page/features/otp/presentation/pages/widgets/pin_put.dart';
import 'package:opt_page/shared/presentation/widgets/button_widget.dart';
import 'package:opt_page/shared/presentation/widgets/text_widget.dart';

import 'widgets/timer.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OtpCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset("assets/img/logo.png"),
            const TextWidget(
              title: "رمز التحقق",
              color: Color(0xFFb92525),
              fontWeight: FontWeight.bold,
            ),
            const TextWidget(
              title: "ادخل رمز التحقق المرسل على جوالك ",
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            const BuildPinPut(),
            BlocConsumer<OtpCubit, OtpState>(
              listener: (context, state) {
                if (state is OtpInvalid) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content:
                            Text('Invalid PIN. It must be 4 digits long.')),
                  );
                } else if (state is OtpValid) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Valid PIN entered: ${state.otp}')),
                  );
                }
              },
              listenWhen: (_, state) =>
                  state is OtpValid || state is OtpInvalid,
              builder: (context, state) {
                return ButtonWidget(
                    onTap: () {
                      context.read<OtpCubit>().validateOtp();
                    },
                    textColor: Colors.white,
                    text: "تحقق",
                    buttonColor: const Color(0xff2c1d65));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BuildTimer(),
                BlocBuilder<OtpCubit, OtpState>(
                  buildWhen: (_, current) =>
                      current is TimeOutState || current is ActivateTimerState,
                  builder: (context, state) {
                    if (state is ActivateTimerState) {
                      return const TextWidget(
                        title: "اعادة ارسال بعد",
                      );
                    } else {
                      return const TextWidget(
                        title: "اعادة الارسال ",
                      );
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
