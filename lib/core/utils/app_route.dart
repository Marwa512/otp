import 'package:opt_page/features/otp/notification/presentation/pages/notification_details.dart';
import 'package:opt_page/features/otp/presentation/pages/otp_screen.dart';
import 'package:opt_page/features/profile/presentation/page/profile_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const profile = '/profile';
  static const notification = '/notification';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const OtpPage(),
      ),
      GoRoute(
        path: profile,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: notification,
        builder: (context, state) => const NotificationDetails(),
      ),
    ],
  );
}
