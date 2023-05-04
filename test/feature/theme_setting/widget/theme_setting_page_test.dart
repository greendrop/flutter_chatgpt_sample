import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/provider/theme_mode_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/repository/theme_mode_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import '../../../support/widget/test_material_app_router.dart';
import 'theme_setting_page_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ThemeModeRepository>(),
])
void main() {
  group('ThemeSettingPage', () {
    testWidgets('現在の themeMode が選択されていること', (tester) async {
      final mockThemeModeRepository = MockThemeModeRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
          child: const TestMaterialAppRouter(
            initialPath: '/setting/theme',
          ),
        ),
      );
      await tester.pumpAndSettle();

      var finder = find.byKey(const ValueKey('themeModeSystem'));
      var radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.value, ThemeMode.system);
      expect(radioListTile.checked, true);

      finder = find.byKey(const ValueKey('themeModeLight'));
      radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.value, ThemeMode.light);
      expect(radioListTile.checked, false);

      finder = find.byKey(const ValueKey('themeModeDark'));
      radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.value, ThemeMode.dark);
      expect(radioListTile.checked, false);
    });

    testWidgets('themeMode.system が選択できること', (tester) async {
      final mockThemeModeRepository = MockThemeModeRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
          child: const TestMaterialAppRouter(
            initialPath: '/setting/theme',
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('themeModeSystem')));
      await tester.pumpAndSettle();

      final finder = find.byKey(const ValueKey('themeModeSystem'));
      final radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.checked, true);
    });

    testWidgets('themeMode.light が選択できること', (tester) async {
      final mockThemeModeRepository = MockThemeModeRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
          child: const TestMaterialAppRouter(
            initialPath: '/setting/theme',
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('themeModeLight')));
      await tester.pumpAndSettle();

      final finder = find.byKey(const ValueKey('themeModeLight'));
      final radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.checked, true);
    });

    testWidgets('themeMode.dark が選択できること', (tester) async {
      final mockThemeModeRepository = MockThemeModeRepository();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            themeModeRepositoryProvider
                .overrideWithValue(mockThemeModeRepository),
          ],
          child: const TestMaterialAppRouter(
            initialPath: '/setting/theme',
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('themeModeDark')));
      await tester.pumpAndSettle();

      final finder = find.byKey(const ValueKey('themeModeDark'));
      final radioListTile = finder.evaluate().first.widget as RadioListTile;
      expect(radioListTile.checked, true);
    });
  });
}
