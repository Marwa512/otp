import 'package:auto_route/auto_route.dart';
import 'package:opt_page/features/otp/presentation/pages/otp_screen.dart';
import 'package:opt_page/features/profile/presentation/page/profile_screen.dart';

import '../../features/map/presentation/page/map_screen.dart';

part 'auto_app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OtpRoute.page, initial: true),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: MapRoute.page),
      ];
}
