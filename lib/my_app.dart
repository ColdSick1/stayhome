import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/custom_theme_data.dart';
import 'package:stayhome/router/router.dart';
import 'package:uni_links/uni_links.dart';

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
  String path = '';
  late final PlatformDeepLink deepLink;
  @override
  void initState() {
    super.initState();
    handleIncomingDeepLinks();
    handleInitialDeepLink(path);
  }

  void handleIncomingDeepLinks() {
    linkStream.listen((link) {
      if (link != null) {
        getIt<AppRouterSingleton>().pushNamed(
          linkParser(link),
        );
      }
    });
  }

  Future<void> handleInitialDeepLink(String path) async {
    final link = await getInitialLink();
    if (link != null) {
      path = linkParser(link);
    }
  }

  String linkParser(String link) {
    return link.replaceFirst(RegExp(r'http://stayhome.com'), '');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      theme: customThemeData,
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouterSingleton>().config(
        deepLinkBuilder: (deepLink) {
          if (deepLink.path == '/') {
            return const DeepLink.path('/');
          } else {
            return DeepLink.path(path);
          }
        },
      ),
    );
  }
}
