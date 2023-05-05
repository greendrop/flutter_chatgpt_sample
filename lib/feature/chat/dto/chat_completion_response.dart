import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_response.freezed.dart';
part 'chat_completion_response.g.dart';

@freezed
class ChatCompletionResponse with _$ChatCompletionResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatCompletionResponse({
    required String id,
    required String object,
    required int created,
    required List<ChatCompletionResponseChoice> choices,
    required ChatCompletionResponseUsage usage,
  }) = _ChatCompletionResponse;

  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);
}

@freezed
class ChatCompletionResponseChoice with _$ChatCompletionResponseChoice {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatCompletionResponseChoice({
    required int index,
    required ChatCompletionResponseChoiceMessage message,
    required String finishReason,
  }) = _ChatCompletionResponseChoice;

  factory ChatCompletionResponseChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseChoiceFromJson(json);
}

@freezed
class ChatCompletionResponseChoiceMessage
    with _$ChatCompletionResponseChoiceMessage {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatCompletionResponseChoiceMessage({
    required String role,
    required String content,
  }) = _ChatCompletionResponseChoiceMessage;

  factory ChatCompletionResponseChoiceMessage.fromJson(
    Map<String, Object?> json,
  ) =>
      _$ChatCompletionResponseChoiceMessageFromJson(json);
}

@freezed
class ChatCompletionResponseUsage with _$ChatCompletionResponseUsage {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatCompletionResponseUsage({
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
  }) = _ChatCompletionResponseUsage;

  factory ChatCompletionResponseUsage.fromJson(Map<String, Object?> json) =>
      _$ChatCompletionResponseUsageFromJson(json);
}
