import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/route/app_router.dart';
import 'package:flutter_chatgpt_sample/config/theme/app_theme_data.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

class TestMaterialAppRouter extends StatelessWidget {
  const TestMaterialAppRouter({
    super.key,
    this.initialPath = '/',
    this.locale = const Locale('ja'),
    this.themeMode = ThemeMode.system,
  });

  final String initialPath;
  final Locale locale;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: locale,
      theme: AppThemeData().light,
      darkTheme: AppThemeData().dark,
      themeMode: themeMode,
      routerConfig: appRouter.config(
        deepLinkBuilder: (_) => DeepLink.path(initialPath),
      ),
    );
  }
}
