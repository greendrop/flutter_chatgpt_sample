import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/features/theme_setting/notifiers/theme_mode_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeStateNotifierProvider =
    StateNotifierProvider<ThemeModeStateNotifier, ThemeMode>(
  (ref) => ThemeModeStateNotifier(ref: ref),
);
