import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/custom_theme_data.dart';
import 'package:stayhome/router/router.dart';

import 'i18n/strings.g.dart';
import 'main.dart';

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
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      theme: customThemeData,
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouterSingleton>().config(),
    );
  }
}
