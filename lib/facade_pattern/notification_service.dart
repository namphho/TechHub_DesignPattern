abstract class NotificationService {
  Future setup();

  void dispose();

  void register(MessageObserver listener);

  void unregister(MessageObserver listener);

  //get token by sync way
  Future<String> getToken();

  //clear notification
  void reset();
}


enum NotificationType {
  MESSAGE, // when app is in foreground and received notification
  LAUNCH, // when app is terminated, and received notification
  RESUME, // when app is in background, and received notification
}

abstract class MessageObserver {
  void onReceivedMessage(NotificationType type, Map<String, dynamic> payload);
}