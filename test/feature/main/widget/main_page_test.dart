import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/repository/locale_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import '../../../support/widget/test_material_app_router.dart';

@GenerateNiceMocks([
  MockSpec<LocaleRepository>(),
])
void main() {
  group('MainPage', () {
    testWidgets('メニューが表示されていること', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: TestMaterialAppRouter(),
        ),
      );
      await tester.pumpAndSettle();

      final navBarFinder = find.byType(BottomNavigationBar);
      expect(
        find.descendant(of: navBarFinder, matching: find.text('チャット')),
        findsOneWidget,
      );
      expect(
        find.descendant(of: navBarFinder, matching: find.text('設定')),
        findsOneWidget,
      );
    });
  });
}
