import 'package:opt_page/core/function/service_locator.dart';
import 'package:opt_page/features/otp/data/models/verify_model.dart';
import 'package:opt_page/features/otp/data/repository/otp_repo_imp.dart';
import 'package:opt_page/features/otp/presentation/pages/otp_screen.dart';
import 'package:opt_page/features/profile/presentation/page/profile_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute{
  static OtpRepoImp otpRepoImp = getIt.get<OtpRepoImp>(); 
  // static const otpPage="/otp";
  static const profile='/profile';
   static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/", 
        builder: (context, state) => const OtpPage(),
      ),
      GoRoute(
        path: profile,
        builder: (context, state) =>  ProfileScreen(profile: state.extra as Profile,),
      ),
    
    ],
  );
}
