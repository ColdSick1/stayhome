import 'dart:developer';
import 'dart:math' as math;
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:stayhome/main.dart';
import 'package:stayhome/router/router.dart';

class PushNotificationService {
  initialize() async {
    _initChannels();
    await _getPermission();
    await _getDeviceToken();
    _listenNotifications();
  }

  _initChannels() {
    AwesomeNotifications().initialize(
      'resource://mipmap/ic_launcher',
      [
        NotificationChannel(
          channelKey: 'Private Messages',
          channelName: 'Личные сообщения',
          channelDescription: 'Сообщения, отправленные другими пользователями',
          channelShowBadge: true,
          enableVibration: true,
          importance: NotificationImportance.High,
          enableLights: true,
        ),
      ],
    );
  }

  _getPermission() async {
    final isAllowed = await AwesomeNotifications().isNotificationAllowed();

    if (isAllowed) {
      return;
    }
    AwesomeNotifications().requestPermissionToSendNotifications();
  }

  _getDeviceToken() async {
    final deviceToken = await FirebaseMessaging.instance.getToken();

    if (deviceToken == null) return;

    log('токен для уведомлений $deviceToken');
    // _sendTokenToBackend(deviceToken) {}
  }

  static _listenNotifications() {
    FirebaseMessaging.onMessage.listen((message) {
      showNotification(message);
    });
    AwesomeNotifications()
        .setListeners(onActionReceivedMethod: _onActionReceivedMethod);
  }

  static showNotification(RemoteMessage message) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: math.Random().nextInt(1000),
        channelKey: 'Private Messages',
        title: message.data['title'].toString(),
        body: message.data['description'].toString(),
        payload: {
          'onTap': message.data['onTap'],
        },
      ),
    );
  }

  @pragma("vm:entry-point")
  static Future<void> _onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    log(receivedAction.payload?['onTap'] as String);

    getIt<AppRouterSingleton>().pushNamed(
      receivedAction.payload?['onTap'] as String,
    );
  }
}
