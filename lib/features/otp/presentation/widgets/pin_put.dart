import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_cubit.dart';
import 'package:opt_page/features/otp/presentation/bloc/otp_states.dart';

final TextEditingController _pinPutController = TextEditingController();

Widget buildPinPut(BuildContext context) {
  return BlocConsumer<OtpCubit, OtpState>(
    listener: (context, state) {
      if (state is OtpInvalid) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Invalid PIN. It must be 4 digits long.')),
        );
      } else if (state is OtpValid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Valid PIN entered: ${state.otp}')),
        );
      }
    },
    builder: (context, state) {
      return Pinput(
        controller: _pinPutController,
        keyboardType: TextInputType.number,
        length: 4, // specify the length of the PIN
        onTap: () {},
        onCompleted: (value) {
          context.read<OtpCubit>().validateOtp(value);
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
    },
  );
}
