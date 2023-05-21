import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stayhome/presentation/design/custom_theme_data.dart';
import 'package:stayhome/router/router.dart';

final getIt = GetIt.instance;
void main() {
  getIt.registerSingleton<AppRouterSingleton>(
    AppRouterSingleton.getInstance(),
  );
  // AppRouterSingleton appRouterInstance = AppRouterSingleton.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // AppRouterSingleton appRouterInstance = AppRouterSingleton.getInstance();
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
      routerConfig: getIt<AppRouterSingleton>().config(),
      // home: const AuthorizationScreen(),
    );
  }
}
