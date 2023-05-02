import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/provider/locale_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/repository/locale_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('LocaleRepository', () {
    group('#fetch', () {
      test('内容が未設定の場合、 null が返ること', () async {
        SharedPreferences.setMockInitialValues({});

        final repository = ProviderContainer().read(localeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, null);
      });

      test('取得した内容が \'\' の場合、 null が返ること', () async {
        SharedPreferences.setMockInitialValues(
          {LocaleRepository.localeKey: ''},
        );

        final repository = ProviderContainer().read(localeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, null);
      });

      test('取得した内容が \'en\' の場合、 Locale(\'en\') が返ること', () async {
        SharedPreferences.setMockInitialValues(
          {LocaleRepository.localeKey: 'en'},
        );

        final repository = ProviderContainer().read(localeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, const Locale('en'));
      });

      test('取得した内容が \'ja\' の場合、 Locale(\'ja\') が返ること', () async {
        SharedPreferences.setMockInitialValues(
          {LocaleRepository.localeKey: 'ja'},
        );

        final repository = ProviderContainer().read(localeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, const Locale('ja'));
      });
    });

    group('#update', () {
      test('null の場合、 \'\' が登録されること', () async {
        final repository = ProviderContainer().read(localeRepositoryProvider);

        await repository.update(null);
        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString(LocaleRepository.localeKey), '');
      });

      test('Locale(\'en\') の場合、 \'en\' が登録されること', () async {
        final repository = ProviderContainer().read(localeRepositoryProvider);

        await repository.update(const Locale('en'));
        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString(LocaleRepository.localeKey), 'en');
      });

      test('Locale(\'ja\') の場合、 \'ja\' が登録されること', () async {
        final repository = ProviderContainer().read(localeRepositoryProvider);

        await repository.update(const Locale('ja'));
        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString(LocaleRepository.localeKey), 'ja');
      });
    });
  });
}
