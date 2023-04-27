import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/config/routes/app_router.dart';
import 'package:flutter_chatgpt_sample/config/themes/app_theme_data.dart';
import 'package:flutter_chatgpt_sample/features/locale_setting/providers/locale_state_notifier_provider.dart';
import 'package:flutter_chatgpt_sample/features/theme_setting/providers/theme_mode_state_notifier_provider.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppRoot extends HookConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInitialized = useState(false);
    final appRouter = useMemoized(AppRouter.new);
    final themeMode = ref.watch(themeModeStateNotifierProvider);
    final locale = ref.watch(localeStateNotifierProvider);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await ref.read(themeModeStateNotifierProvider.notifier).initialize();
          await ref.read(localeStateNotifierProvider.notifier).initialize();
          isInitialized.value = true;
        });

        return () {};
      },
      [],
    );

    if (!isInitialized.value) {
      return const Center(child: CircularProgressIndicator());
    }

    return MaterialApp.router(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: locale,
      onGenerateTitle: (BuildContext context) => L10n.of(context)!.appTitle,
      theme: AppThemeData().light,
      darkTheme: AppThemeData().dark,
      themeMode: themeMode,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
