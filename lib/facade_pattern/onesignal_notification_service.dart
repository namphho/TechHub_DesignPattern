import 'package:dp/facade_pattern/notification_service.dart';

class OneSignalNotificationService implements NotificationService{
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  void register(MessageObserver listener) {
    // TODO: implement register
  }

  @override
  void reset() {
    // TODO: implement reset
  }

  @override
  Future setup() {
    // TODO: implement setup
    throw UnimplementedError();
  }

  @override
  void unregister(MessageObserver listener) {
    // TODO: implement unregister
  }

}