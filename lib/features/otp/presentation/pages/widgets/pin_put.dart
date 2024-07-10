import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart';

class BuildPinPut extends StatelessWidget {
  const BuildPinPut({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController pinPutController = TextEditingController();

    return Pinput(
      controller: pinPutController,
      keyboardType: TextInputType.number,
      length: 4, // specify the length of the PIN
      onTap: () {},
      onChanged: (value) {
        context.read<OtpCubit>().setUserOtp(value);
      },

      defaultPinTheme: PinTheme(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(
            color: Colors.grey,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(
            color: const Color.fromARGB(255, 245, 243, 243),
          ),
          color: const Color.fromARGB(255, 229, 221, 221),
          shape: BoxShape.rectangle,
        ),
        textStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
