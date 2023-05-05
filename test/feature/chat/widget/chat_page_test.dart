import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as chat_ui;
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_response.dart';
import 'package:flutter_chatgpt_sample/feature/chat/provider/chat_completion_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/chat/repository/chat_completion_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';
import '../../../support/widget/test_material_app_router.dart';
import 'chat_page_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ChatCompletionRepository>(),
])
void main() {
  group('ChatPage', () {
    testWidgets('', (tester) async {
      final response = ChatCompletionResponse(
        id: const Uuid().v4(),
        object: 'chat.completion',
        created: 1677649420,
        usage: const ChatCompletionResponseUsage(
          promptTokens: 56,
          completionTokens: 31,
          totalTokens: 87,
        ),
        choices: [
          const ChatCompletionResponseChoice(
            index: 0,
            message: ChatCompletionResponseChoiceMessage(
              role: 'assistant',
              content: 'Pong',
            ),
            finishReason: 'stop',
          ),
        ],
      );

      final mockChatCompletionRepository = MockChatCompletionRepository();
      when(mockChatCompletionRepository.post(any))
          .thenAnswer((_) async => response);

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            chatCompletionRepositoryProvider
                .overrideWithValue(mockChatCompletionRepository),
          ],
          child: const TestMaterialAppRouter(
            initialPath: '/chat',
          ),
        ),
      );
      await tester.pumpAndSettle();

      final chatFinder = find.byType(chat_ui.Chat);

      await tester.enterText(
        find.descendant(of: chatFinder, matching: find.byType(TextField)),
        'Ping',
      );
      await tester.pumpAndSettle();

      await tester.tap(
        find.descendant(of: chatFinder, matching: find.byType(IconButton)),
      );
      await tester.pumpAndSettle();

      expect(
        find.descendant(of: chatFinder, matching: find.text('Ping')),
        findsOneWidget,
      );

      expect(
        find.descendant(of: chatFinder, matching: find.text('Pong')),
        findsOneWidget,
      );
    });
  });
}
