import 'dart:convert';

import 'package:flutter_chatgpt_sample/config/app_config.dart';
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_request.dart';
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_response.dart';
import 'package:flutter_chatgpt_sample/feature/chat/provider/open_ai_dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatCompletionRepository {
  ChatCompletionRepository({required this.ref});

  final Ref ref;

  Future<ChatCompletionResponse> post(ChatCompletionRequest data) async {
    final dio = ref.read(openAiDioProvider);
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConfig.instance.openAiApiKey}',
    };

    return dio
        .post<String>(
      '/v1/chat/completions',
      data: jsonEncode(data.toJson()),
    )
        .then((response) {
      return Future.value(
        ChatCompletionResponse.fromJson(
          jsonDecode(response.data ?? '') as Map<String, dynamic>,
        ),
      );
    }).onError((error, stackTrace) {
      return Future.error(error!);
    });
  }
}
