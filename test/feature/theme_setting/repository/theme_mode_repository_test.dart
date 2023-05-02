import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/provider/theme_mode_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/repository/theme_mode_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('ThemeModeRepository', () {
    group('#fetch', () {
      test('内容が未設定の場合、 ThemeMode.system が返ること', () async {
        SharedPreferences.setMockInitialValues({});

        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, ThemeMode.system);
      });

      test('取得した内容が \'\' の場合、 ThemeMode.system が返ること', () async {
        SharedPreferences.setMockInitialValues(
          {ThemeModeRepository.themeModeKey: ''},
        );

        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, ThemeMode.system);
      });

      test('取得した内容が \'ThemeMode.system\' の場合、 ThemeMode.system が返ること',
          () async {
        SharedPreferences.setMockInitialValues(
          {ThemeModeRepository.themeModeKey: 'ThemeMode.system'},
        );

        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, ThemeMode.system);
      });

      test('取得した内容が \'ThemeMode.light\' の場合、 ThemeMode.light が返ること', () async {
        SharedPreferences.setMockInitialValues(
          {ThemeModeRepository.themeModeKey: 'ThemeMode.light'},
        );

        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, ThemeMode.light);
      });

      test('取得した内容が \'ThemeMode.dark\' の場合、 ThemeMode.dark が返ること', () async {
        SharedPreferences.setMockInitialValues(
          {ThemeModeRepository.themeModeKey: 'ThemeMode.dark'},
        );

        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        final locale = await repository.fetch();
        expect(locale, ThemeMode.dark);
      });
    });

    group('#update', () {
      test('ThemeMode.system の場合、 \'ThemeMode.system\' が登録されること', () async {
        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        await repository.update(ThemeMode.system);
        final prefs = await SharedPreferences.getInstance();
        expect(
          prefs.getString(ThemeModeRepository.themeModeKey),
          'ThemeMode.system',
        );
      });

      test('ThemeMode.light の場合、 \'ThemeMode.light\' が登録されること', () async {
        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        await repository.update(ThemeMode.light);
        final prefs = await SharedPreferences.getInstance();
        expect(
          prefs.getString(ThemeModeRepository.themeModeKey),
          'ThemeMode.light',
        );
      });

      test('ThemeMode.dark の場合、 \'ThemeMode.dark\' が登録されること', () async {
        final repository =
            ProviderContainer().read(themeModeRepositoryProvider);

        await repository.update(ThemeMode.dark);
        final prefs = await SharedPreferences.getInstance();
        expect(
          prefs.getString(ThemeModeRepository.themeModeKey),
          'ThemeMode.dark',
        );
      });
    });
  });
}
