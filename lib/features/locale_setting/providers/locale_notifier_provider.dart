import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/features/locale_setting/notifiers/locale_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final localeNotifierProvider = StateNotifierProvider<LocaleNotifier, Locale?>(
  (ref) => LocaleNotifier(ref: ref),
);
