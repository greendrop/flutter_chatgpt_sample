// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatCompletionRequest _$$_ChatCompletionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompletionRequest(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) =>
              ChatCompletionRequestMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatCompletionRequestToJson(
        _$_ChatCompletionRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages,
    };

_$_ChatCompletionRequestMessage _$$_ChatCompletionRequestMessageFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompletionRequestMessage(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ChatCompletionRequestMessageToJson(
        _$_ChatCompletionRequestMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
