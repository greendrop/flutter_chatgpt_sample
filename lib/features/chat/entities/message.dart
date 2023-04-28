import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chatgpt_sample/features/chat/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required String userId,
    required String text,
    DateTime? createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);

  // ignore: unused_element
  const Message._();

  types.Message toChatUiMessage() {
    final user = userId == User.meId ? User.me() : User.bot();
    return types.TextMessage(
      id: id,
      author: user.toChatUiUser(),
      text: text,
      createdAt: createdAt?.millisecondsSinceEpoch,
    );
  }
}
