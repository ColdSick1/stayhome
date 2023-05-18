import 'package:flutter/material.dart';
import 'package:stayhome/presentation/authorization/screeens/authorization_screen.dart';
import 'package:stayhome/presentation/design/custom_theme_data.dart';
import 'package:stayhome/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: customThemeData,
      routerConfig: _appRouter.config(),
      // home: const AuthorizationScreen(),
    );
  }
}
