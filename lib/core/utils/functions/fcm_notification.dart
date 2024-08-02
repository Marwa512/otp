import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:opt_page/core/utils/app_route.dart';
import 'package:opt_page/features/notification/domain/entities/notification_entity.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> notificaionConfig() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
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

  final token = await FirebaseMessaging.instance.getToken();
  print(token);
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
    NotificationEntity notificationEntity = NotificationEntity(
      message: message.notification!.body,
      title: message.notification!.title,
    );

    if (kDebugMode) {
      print("Message clicked");
      print(
          "On Message Opened app: ${message.notification?.body}   ${message.notification?.title}");
    }
    AppRoute.router.go(AppRoute.notification, extra: notificationEntity);
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Handling a background message: $message");
  }
}
