import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

void notification() {
  FirebaseMessaging.onMessage.listen((event) {
    if (kDebugMode) {
      print("On Message");
    }
    if (kDebugMode) {
      print(event.data);
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((event) {
    if (kDebugMode) {
      print("On Message Opened app");
    }
    if (kDebugMode) {
      print(event.data);
    }
  });
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
  }
}
