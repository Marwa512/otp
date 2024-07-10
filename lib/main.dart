import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/features/otp/data/data_resources/local/shared_prefrences.dart';
import 'package:opt_page/features/otp/presentation/pages/otp_screen.dart';
import 'package:get_it/get_it.dart';
import 'bloc_observer.dart';

void main() {
  GetIt.instance.registerSingleton<SharedPreferencesProvider>(
      SharedPreferencesProvider());
  Bloc.observer = MyBlocObserver();
  runApp(const OtpScreen());
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OTP screen",
      home: OtpPage(),
    );
  }
}
