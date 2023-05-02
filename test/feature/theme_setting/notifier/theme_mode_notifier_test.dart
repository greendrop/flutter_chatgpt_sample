import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/provider/theme_mode_notifier_provider.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/provider/theme_mode_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/repository/theme_mode_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'theme_mode_notifier_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ThemeModeRepository>(),
])
void main() {
  group('ThemeModeNotifier', () {
    group('#initialize', () {
      test('repository から fetch した内容が登録されること', () async {
        final mockThemeModeRepository = MockThemeModeRepository();
        when(mockThemeModeRepository.fetch())
            .thenAnswer((_) async => ThemeMode.system);

        final container = ProviderContainer(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
        );

        final notifier = container.read(themeModeNotifierProvider.notifier);

        await notifier.initialize();
        expect(notifier.debugState, ThemeMode.system);
      });
    });

    group('#setThemeMode', () {
      test('ThemeMode.system が登録されること', () async {
        final mockThemeModeRepository = MockThemeModeRepository();
        final container = ProviderContainer(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
        );

        final notifier = container.read(themeModeNotifierProvider.notifier);

        await notifier.setThemeMode(ThemeMode.system);
        expect(notifier.debugState, ThemeMode.system);
        verify(mockThemeModeRepository.update(ThemeMode.system)).called(1);
      });

      test('ThemeMode.light が登録されること', () async {
        final mockThemeModeRepository = MockThemeModeRepository();
        final container = ProviderContainer(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
        );

        final notifier = container.read(themeModeNotifierProvider.notifier);

        await notifier.setThemeMode(ThemeMode.light);
        expect(notifier.debugState, ThemeMode.light);
        verify(mockThemeModeRepository.update(ThemeMode.light)).called(1);
      });

      test('ThemeMode.dark が登録されること', () async {
        final mockThemeModeRepository = MockThemeModeRepository();
        final container = ProviderContainer(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
        );

        final notifier = container.read(themeModeNotifierProvider.notifier);

        await notifier.setThemeMode(ThemeMode.dark);
        expect(notifier.debugState, ThemeMode.dark);
        verify(mockThemeModeRepository.update(ThemeMode.dark)).called(1);
      });
    });
  });
}
