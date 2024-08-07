// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
    NotificationDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailsRouteArgs>(
          orElse: () => const NotificationDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NotificationDetailsScreen(
          key: args.key,
          notificationEntity: args.notificationEntity,
        ),
      );
    },
    OtpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OtpPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationDetailsScreen]
class NotificationDetailsRoute
    extends PageRouteInfo<NotificationDetailsRouteArgs> {
  NotificationDetailsRoute({
    Key? key,
    NotificationEntity? notificationEntity,
    List<PageRouteInfo>? children,
  }) : super(
          NotificationDetailsRoute.name,
          args: NotificationDetailsRouteArgs(
            key: key,
            notificationEntity: notificationEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailsRoute';

  static const PageInfo<NotificationDetailsRouteArgs> page =
      PageInfo<NotificationDetailsRouteArgs>(name);
}

class NotificationDetailsRouteArgs {
  const NotificationDetailsRouteArgs({
    this.key,
    this.notificationEntity,
  });

  final Key? key;

  final NotificationEntity? notificationEntity;

  @override
  String toString() {
    return 'NotificationDetailsRouteArgs{key: $key, notificationEntity: $notificationEntity}';
  }
}

/// generated route for
/// [OtpPage]
class OtpRoute extends PageRouteInfo<void> {
  const OtpRoute({List<PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
