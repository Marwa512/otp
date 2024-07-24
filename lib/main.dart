import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opt_page/core/utils/app_route.dart';
import 'package:opt_page/core/utils/theme_data.dart';
import 'package:opt_page/shared/presentation/app/app_bloc.dart';
import 'core/injection/setup_service_locator.dart';
import 'core/utils/bloc_observer.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  configureDependencies();
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
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(builder: (context, state) {
        return MaterialApp.router(
          routerConfig: AppRoute.router, 
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: context.read<AppBloc>().isDark ? darkTheme : lightTheme,
          title: "OTP screen",
          // home: const OtpPage(),
        );
      }),
    );
  }
}
