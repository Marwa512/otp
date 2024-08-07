import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:opt_page/core/injection/setup_service_locator.dart';
import 'package:opt_page/core/utils/auto_app_router.dart';
import 'package:opt_page/features/notification/domain/entities/notification_entity.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> notificaionConfig() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (details) {
      Map<String, dynamic> message = jsonDecode(details.payload!);
      onSelectNoti(message: message['message'], title: message['title']);
    },
  );

  const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'otp_channel_id', 'channel name',
      importance: Importance.max,
      sound: RawResourceAndroidNotificationSound('notification'),
      playSound: true);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.requestNotificationsPermission();

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;

    if (notification != null && android != null) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        payload: jsonEncode({
          'message': notification.body,
          'title': notification.title,
        }),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'otp_channel_id',
            'channel name',
            playSound: true,
            sound: RawResourceAndroidNotificationSound('notification'),
          ),
        ),
      );
    }

    if (kDebugMode) {
      print(
          "On Message: ${message.data} sound ${android!.sound}  priority ${android.priority} channelId ${android.channelId} ");
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
    if (kDebugMode) {
      print("Message clicked");
      print(
          "On Message Opened app: ${message.notification?.body}   ${message.notification?.title}");
    }

    onSelectNoti(
      message: message.notification!.body!,
      title: message.notification!.title!,
    );
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

void onSelectNoti({
  required String message,
  required String title,
}) {
  NotificationEntity notificationEntity = NotificationEntity(
    message: message,
    title: title,
  );

  AppRouter appRouter = getIt<AppRouter>();

  appRouter
      .push(NotificationDetailsRoute(notificationEntity: notificationEntity));
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Handling a background message: $message");
  }
}
