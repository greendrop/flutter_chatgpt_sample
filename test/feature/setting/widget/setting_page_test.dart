import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/repository/locale_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../../support/widget/test_material_app_router.dart';

@GenerateNiceMocks([
  MockSpec<LocaleRepository>(),
])
void main() {
  group('SettingPage', () {
    testWidgets('メニューが表示されていること', (tester) async {
      PackageInfo.setMockInitialValues(
        appName: 'appName',
        packageName: 'packageName',
        version: 'version',
        buildNumber: 'buildNumber',
        buildSignature: 'buildSignature',
      );

      await tester.pumpWidget(
        const ProviderScope(
          child: TestMaterialAppRouter(
            initialPath: '/setting',
          ),
        ),
      );
      await tester.pumpAndSettle();

      var finder = find.byKey(const ValueKey('localeListTile'));
      var listTile = finder.evaluate().first.widget as ListTile;
      expect((listTile.title! as Text).data, '言語');

      finder = find.byKey(const ValueKey('themeListTile'));
      listTile = finder.evaluate().first.widget as ListTile;
      expect((listTile.title! as Text).data, 'テーマ');

      finder = find.byKey(const ValueKey('aboutListTile'));
      final aboutListTile = finder.evaluate().first.widget as AboutListTile;
      expect(aboutListTile.applicationName, 'appName');
    });
  });
}
