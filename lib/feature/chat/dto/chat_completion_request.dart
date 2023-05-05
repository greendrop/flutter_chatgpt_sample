import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_request.freezed.dart';
part 'chat_completion_request.g.dart';

@freezed
class ChatCompletionRequest with _$ChatCompletionRequest {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatCompletionRequest({
    required String model,
    required List<ChatCompletionRequestMessage> messages,
  }) = _ChatCompletionRequest;

  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);
}

@freezed
class ChatCompletionRequestMessage with _$ChatCompletionRequestMessage {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatCompletionRequestMessage({
    required String role,
    required String content,
  }) = _ChatCompletionRequestMessage;

  factory ChatCompletionRequestMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestMessageFromJson(json);
}
