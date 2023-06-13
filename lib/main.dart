import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stayhome/presentation/design/custom_theme_data.dart';
import 'package:stayhome/presentation/push_notifications/push_notification_service.dart';
import 'package:stayhome/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

@pragma("vm:entry-point")
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  PushNotificationService.showNotification(message);
}

final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await PushNotificationService().initialize();
  FirebaseMessaging.onBackgroundMessage(
    _firebaseMessagingBackgroundHandler,
  );
  getIt.registerSingleton<AppRouterSingleton>(
    AppRouterSingleton.getInstance(),
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: customThemeData,
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouterSingleton>().config(),
      // home: const AuthorizationScreen(),
    );
  }
}
