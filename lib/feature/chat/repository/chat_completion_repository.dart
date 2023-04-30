import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/app_config.dart';
import 'package:flutter_chatgpt_sample/exception/app_exception.dart';
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_request.dart';
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatCompletionRepository {
  ChatCompletionRepository({required this.ref});

  static const _baseUrl = 'https://api.openai.com';

  final Ref ref;

  Future<ChatCompletionResponse> post(ChatCompletionRequest data) async {
    final dio = Dio();
    dio.options.baseUrl = _baseUrl;
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConfig.instance.openAiApiKey}',
    };

    debugPrint(AppConfig.instance.openAiApiKey);

    debugPrint(jsonEncode(data.toJson()));
    return dio
        .post<String>(
      '$_baseUrl/v1/chat/completions',
      data: jsonEncode(data.toJson()),
    )
        .then((response) {
      return Future.value(
        ChatCompletionResponse.fromJson(
          jsonDecode(response.data ?? '') as Map<String, dynamic>,
        ),
      );
    }).onError((error, stackTrace) {
      return Future.error(AppException(parentException: error));
    });
  }
}
