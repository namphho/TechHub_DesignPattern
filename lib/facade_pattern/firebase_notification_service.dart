import 'package:dp/facade_pattern/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationService implements NotificationService {
  List<MessageObserver> observers = [];

  @override
  Future setup() async {
    await Firebase.initializeApp();

    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: false,
      badge: false,
      sound: false,
    );
  }

  // implement other function .....
}
