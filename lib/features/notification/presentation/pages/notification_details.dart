import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:opt_page/features/notification/domain/entities/notification_entity.dart';

@RoutePage()
class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({
    super.key,
    this.notificationEntity,
  });
  final NotificationEntity? notificationEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Notification Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("Message: ${notificationEntity!.message}"),
            const SizedBox(
              height: 10,
            ),
            Text("Title: ${notificationEntity!.title}")
          ],
        ),
      ),
    );
  }
}
