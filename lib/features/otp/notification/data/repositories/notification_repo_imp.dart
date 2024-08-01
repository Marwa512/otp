import 'package:opt_page/features/otp/notification/domain/entities/notification_entity.dart';

import '../../domain/repositories/notification_repo.dart';

class NotificationRepoImp implements NotificationRepo {
  NotificationRepoImp();
  NotificationEntity? notificationEntity;

  @override
  Future<void> setNotificationEntity({
    required String message,
    required String title,
  }) async {
    notificationEntity = NotificationEntity(
      message: message,
      title: title,
    );
  }

  @override
  NotificationEntity? getNotification() {
    return notificationEntity;
  }
}
