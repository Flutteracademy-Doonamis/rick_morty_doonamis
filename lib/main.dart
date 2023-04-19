import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/core/locator/locator.dart';
import 'package:rick_morty_doonamis/core/router/app_router.dart';
import 'package:rick_morty_doonamis/theme/app_theme.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',

      /// THEME
      theme: appTheme,

      /// ROUTES
      routerConfig: goRouter,
    );
  }
}
