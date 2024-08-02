import '../entities/notification_entity.dart';

abstract class NotificationRepo {
  void setNotificationEntity({
    required String message,
    required String title,
  });

  NotificationEntity? getNotification();
}
