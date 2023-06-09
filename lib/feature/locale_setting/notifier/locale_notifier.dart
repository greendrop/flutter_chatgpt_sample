import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/provider/locale_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocaleNotifier extends StateNotifier<Locale?> {
  LocaleNotifier({required this.ref}) : super(null);

  final Ref ref;

  Future<void> initialize() async {
    state = await ref.watch(localeRepositoryProvider).fetch();
  }

  Future<void> setLocale(Locale? locale) async {
    state = locale;
    await ref.watch(localeRepositoryProvider).update(locale);
  }
}
