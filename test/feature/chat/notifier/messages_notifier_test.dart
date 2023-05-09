import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_response.dart';
import 'package:flutter_chatgpt_sample/feature/chat/entity/message.dart';
import 'package:flutter_chatgpt_sample/feature/chat/entity/user.dart';
import 'package:flutter_chatgpt_sample/feature/chat/provider/chat_completion_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/chat/provider/messages_notifier_provider.dart';
import 'package:flutter_chatgpt_sample/feature/chat/repository/chat_completion_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';
import 'messages_notifier_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ChatCompletionRepository>(),
])
void main() {
  group('MessagesNotifier', () {
    group('#clear', () {
      test('stateが空配列になること', () async {
        final message = Message(
          id: const Uuid().v4(),
          userId: User.meId,
          text: 'Ping',
          createdAt: DateTime.now(),
        );

        final mockChatCompletionRepository = MockChatCompletionRepository();

        final container = ProviderContainer(
          overrides: [
            chatCompletionRepositoryProvider
                .overrideWithValue(mockChatCompletionRepository),
          ],
        );

        final notifier = container.read(messagesNotifierProvider.notifier)
          ..add(message)
          ..clear();

        expect(notifier.debugState, <Message>[]);
      });
    });

    group('#add', () {
      test('引数が登録されること', () {
        final message = Message(
          id: const Uuid().v4(),
          userId: User.meId,
          text: 'Ping',
          createdAt: DateTime.now(),
        );

        final mockChatCompletionRepository = MockChatCompletionRepository();

        final container = ProviderContainer(
          overrides: [
            chatCompletionRepositoryProvider
                .overrideWithValue(mockChatCompletionRepository),
          ],
        );

        final notifier = container.read(messagesNotifierProvider.notifier)
          ..add(message);
        expect(notifier.debugState, [message]);
      });
    });

    group('#addAndPost', () {
      test('引数と repository から post の戻り値が登録されること', () async {
        final message = Message(
          id: const Uuid().v4(),
          userId: User.meId,
          text: 'Ping',
          createdAt: DateTime.now(),
        );

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

        final container = ProviderContainer(
          overrides: [
            chatCompletionRepositoryProvider
                .overrideWithValue(mockChatCompletionRepository),
          ],
        );

        final notifier = container.read(messagesNotifierProvider.notifier);

        await notifier.addAndPost(message);

        expect(notifier.debugState[0].userId, User.meId);
        expect(notifier.debugState[0].text, 'Ping');
        expect(notifier.debugState[1].userId, User.botId);
        expect(notifier.debugState[1].text, 'Pong');
      });
    });
  });
}
