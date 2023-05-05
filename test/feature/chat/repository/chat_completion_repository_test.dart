import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_request.dart';
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_response.dart';
import 'package:flutter_chatgpt_sample/feature/chat/provider/chat_completion_repository_provider.dart';
import 'package:flutter_chatgpt_sample/feature/chat/provider/open_ai_dio_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('ChatCompletionRepository', () {
    group('#post', () {
      test('結果が戻り値で返ること', () async {
        final dio = Dio();
        final dioAdapter = DioAdapter(dio: dio);

        const data = ChatCompletionRequest(
          model: 'gpt-3.5-turbo',
          messages: [
            ChatCompletionRequestMessage(role: 'user', content: 'Ping')
          ],
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

        dioAdapter.onPost(
          '/v1/chat/completions',
          (server) => server.reply(HttpStatus.created, response.toJson()),
          data: jsonEncode(data.toJson()),
        );

        final repository = ProviderContainer(
          overrides: [
            openAiDioProvider.overrideWithValue(dio),
          ],
        ).read(chatCompletionRepositoryProvider);

        final res = await repository.post(data);

        expect(res.id, response.id);
      });
    });
  });
}
