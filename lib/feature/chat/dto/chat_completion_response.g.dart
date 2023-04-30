// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatCompletionResponse _$$_ChatCompletionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompletionResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      choices: (json['choices'] as List<dynamic>)
          .map((e) =>
              ChatCompletionResponseChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: ChatCompletionResponseUsage.fromJson(
          json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatCompletionResponseToJson(
        _$_ChatCompletionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'choices': instance.choices,
      'usage': instance.usage,
    };

_$_ChatCompletionResponseChoice _$$_ChatCompletionResponseChoiceFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompletionResponseChoice(
      index: json['index'] as int,
      message: ChatCompletionResponseChoiceMessage.fromJson(
          json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$_ChatCompletionResponseChoiceToJson(
        _$_ChatCompletionResponseChoice instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finishReason,
    };

_$_ChatCompletionResponseChoiceMessage
    _$$_ChatCompletionResponseChoiceMessageFromJson(
            Map<String, dynamic> json) =>
        _$_ChatCompletionResponseChoiceMessage(
          role: json['role'] as String,
          content: json['content'] as String,
        );

Map<String, dynamic> _$$_ChatCompletionResponseChoiceMessageToJson(
        _$_ChatCompletionResponseChoiceMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };

_$_ChatCompletionResponseUsage _$$_ChatCompletionResponseUsageFromJson(
        Map<String, dynamic> json) =>
    _$_ChatCompletionResponseUsage(
      promptTokens: json['prompt_tokens'] as int,
      completionTokens: json['completion_tokens'] as int,
      totalTokens: json['total_tokens'] as int,
    );

Map<String, dynamic> _$$_ChatCompletionResponseUsageToJson(
        _$_ChatCompletionResponseUsage instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
