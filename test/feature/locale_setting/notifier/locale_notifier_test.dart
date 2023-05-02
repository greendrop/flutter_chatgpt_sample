import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/provider/locale_notifier_provider.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/provider/locale_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/repository/locale_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'locale_notifier_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<LocaleRepository>(),
])
void main() {
  group('LocaleNotifier', () {
    group('#initialize', () {
      test('repository から fetch した内容が登録されること', () async {
        final mockLocaleRepository = MockLocaleRepository();
        when(mockLocaleRepository.fetch())
            .thenAnswer((_) async => const Locale('ja'));

        final container = ProviderContainer(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
        );

        final notifier = container.read(localeNotifierProvider.notifier);

        await notifier.initialize();
        expect(notifier.debugState, const Locale('ja'));
      });
    });

    group('#setLocale', () {
      test('null が登録されること', () async {
        final mockLocaleRepository = MockLocaleRepository();
        final container = ProviderContainer(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
        );

        final notifier = container.read(localeNotifierProvider.notifier);

        await notifier.setLocale(null);
        expect(notifier.debugState, null);
        verify(mockLocaleRepository.update(null)).called(1);
      });

      test('Locale(\'en\') が登録されること', () async {
        final mockLocaleRepository = MockLocaleRepository();
        final container = ProviderContainer(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
        );

        final notifier = container.read(localeNotifierProvider.notifier);

        await notifier.setLocale(const Locale('en'));
        expect(notifier.debugState, const Locale('en'));
        verify(mockLocaleRepository.update(const Locale('en'))).called(1);
      });

      test('Locale(\'ja\') が登録されること', () async {
        final mockLocaleRepository = MockLocaleRepository();
        final container = ProviderContainer(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
        );

        final notifier = container.read(localeNotifierProvider.notifier);

        await notifier.setLocale(const Locale('ja'));
        expect(notifier.debugState, const Locale('ja'));
        verify(mockLocaleRepository.update(const Locale('ja'))).called(1);
      });
    });
  });
}
