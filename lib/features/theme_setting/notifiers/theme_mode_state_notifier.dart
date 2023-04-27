import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/features/theme_setting/providers/theme_mode_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeModeStateNotifier extends StateNotifier<ThemeMode> {
  ThemeModeStateNotifier({required this.ref}) : super(ThemeMode.system);

  final Ref ref;

  Future<void> initialize() async {
    state = await ref.read(themeModeRepositoryProvider).fetch();
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    state = themeMode;
    await ref.read(themeModeRepositoryProvider).update(themeMode);
  }
}
