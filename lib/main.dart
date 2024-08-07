import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:opt_page/core/utils/theme_data.dart';
import 'package:opt_page/features/otp/data/data_resources/local/shared_prefrences.dart';
import 'package:opt_page/features/otp/presentation/pages/otp_screen.dart';
import 'package:opt_page/shared/presentation/app/app_bloc.dart';
import 'bloc_observer.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // GetIt.instance.registerSingleton<SharedPreferencesProvider>(
  //     SharedPreferencesProvider());
  Bloc.observer = MyBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale("ar")],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale("ar"),
      child: const OtpScreen(),
    ),
  );
  // runApp(const OtpScreen());
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
          // buildWhen: (previous, current) =>
          //     current is _LightThemeState || current is _DarkThemeState,
          builder: (context, state) {
            return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              theme: context.read<AppBloc>().isDark ? darkTheme : lightTheme,
              title: "OTP screen",
              home: const OtpPage(),
            );
          }),
    );
  }
}
