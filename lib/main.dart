import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:get_it/get_it.dart';
import 'package:stayhome/i18n/strings.g.dart';
import 'package:stayhome/presentation/design/custom_theme_data.dart';
import 'package:stayhome/presentation/push_notifications/push_notification_service.dart';
import 'package:stayhome/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

@pragma("vm:entry-point")
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  PushNotificationService.showNotification(message);
}

final getIt = GetIt.instance;

final FlutterLocalization localization = FlutterLocalization.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LocaleSettings.useDeviceLocale();

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

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
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
  void initState() {
    super.initState();
    localization.init(
        mapLocales: [MapLocale('ru', AppLocaleUtils.supportedLocales.first)],
        initLanguageCode: 'en');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      theme: customThemeData,
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouterSingleton>().config(),
    );
  }
}
