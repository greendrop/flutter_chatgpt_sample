import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/features/theme_setting/notifiers/theme_mode_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeNotifierProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(ref: ref),
);
