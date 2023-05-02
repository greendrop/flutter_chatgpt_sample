import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/theme/app_theme_data.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

class TestMaterialApp extends StatelessWidget {
  const TestMaterialApp({
    super.key,
    required this.child,
    this.locale = const Locale('ja'),
    this.themeMode = ThemeMode.system,
  });

  final Widget child;
  final Locale locale;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: locale,
      theme: AppThemeData().light,
      darkTheme: AppThemeData().dark,
      themeMode: themeMode,
      home: child,
    );
  }
}
