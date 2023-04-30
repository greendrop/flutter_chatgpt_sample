import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/notifier/theme_mode_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeNotifierProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(ref: ref),
);
