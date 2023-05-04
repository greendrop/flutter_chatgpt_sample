import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/route/app_router.dart';
import 'package:flutter_chatgpt_sample/config/theme/app_theme_data.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/provider/locale_notifier_provider.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/provider/theme_mode_notifier_provider.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppRoot extends HookConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInitialized = useState(false);
    final appRouter = useMemoized(AppRouter.new);
    final themeMode = ref.watch(themeModeNotifierProvider);
    final locale = ref.watch(localeNotifierProvider);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await ref.read(themeModeNotifierProvider.notifier).initialize();
          await ref.read(localeNotifierProvider.notifier).initialize();
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
      routerConfig: appRouter.config(),
    );
  }
}
