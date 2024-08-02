import 'package:opt_page/features/notification/domain/entities/notification_entity.dart';
import 'package:opt_page/features/notification/presentation/pages/notification_details.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const profile = '/profile';
  static const notification = '/notification';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: notification,
        builder: (context, state) => NotificationDetails(
          notificationEntity: state.extra as NotificationEntity,
        ),
      ),
    ],
  );
}
