import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/provider/locale_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/repository/locale_repository.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/widget/locale_setting_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import '../../../support/widget/test_material_app.dart';
import 'locale_setting_page_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<LocaleRepository>(),
])
void main() {
  group('LocaleSettingPage', () {
    testWidgets('現在の locale が選択されていること', (tester) async {
      final mockLocaleRepository = MockLocaleRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
          child: const TestMaterialApp(
            child: LocaleSettingPage(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      var finder = find.byKey(const ValueKey('localeNull'));
      var radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.value, null);
      expect(radioListTile.checked, true);

      finder = find.byKey(const ValueKey('localeEn'));
      radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.value, const Locale('en'));
      expect(radioListTile.checked, false);

      finder = find.byKey(const ValueKey('localeJa'));
      radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.value, const Locale('ja'));
      expect(radioListTile.checked, false);
    });

    testWidgets('null が選択できること', (tester) async {
      final mockLocaleRepository = MockLocaleRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
          child: const TestMaterialApp(
            child: LocaleSettingPage(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('localeNull')));
      await tester.pumpAndSettle();

      final finder = find.byKey(const ValueKey('localeNull'));
      final radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.checked, true);
    });

    testWidgets('Locale(\'en\') が選択できること', (tester) async {
      final mockLocaleRepository = MockLocaleRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
          child: const TestMaterialApp(
            child: LocaleSettingPage(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('localeEn')));
      await tester.pumpAndSettle();

      final finder = find.byKey(const ValueKey('localeEn'));
      final radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.checked, true);
    });

    testWidgets('Locale(\'ja\') が選択できること', (tester) async {
      final mockLocaleRepository = MockLocaleRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            localeRepositoryProvider.overrideWithValue(mockLocaleRepository),
          ],
          child: const TestMaterialApp(
            child: LocaleSettingPage(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('localeJa')));
      await tester.pumpAndSettle();

      final finder = find.byKey(const ValueKey('localeJa'));
      final radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.checked, true);
    });
  });
}
