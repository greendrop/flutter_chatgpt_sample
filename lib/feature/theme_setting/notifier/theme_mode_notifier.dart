import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/provider/theme_mode_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier({required this.ref}) : super(ThemeMode.system);

  final Ref ref;

  Future<void> initialize() async {
    state = await ref.read(themeModeRepositoryProvider).fetch();
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    state = themeMode;
    await ref.read(themeModeRepositoryProvider).update(themeMode);
  }
}
