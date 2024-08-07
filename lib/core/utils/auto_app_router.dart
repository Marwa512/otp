import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:opt_page/features/notification/presentation/pages/notification_details.dart';
import 'package:opt_page/features/otp/presentation/pages/otp_screen.dart';
import 'package:opt_page/features/profile/presentation/page/profile_screen.dart';

import '../../features/map/presentation/page/map_screen.dart';
import '../../features/notification/domain/entities/notification_entity.dart';

part 'auto_app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OtpRoute.page, initial: true),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(
          page: MapRoute.page,
        ),
        AutoRoute(page: NotificationDetailsRoute.page),
      ];
}
