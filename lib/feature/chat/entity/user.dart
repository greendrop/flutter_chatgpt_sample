import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
  factory User.me() => User(id: User.meId);
  factory User.bot() => User(id: User.botId);

  // ignore: unused_element
  const User._();

  static String meId = 'me';
  static String botId = 'bot';

  types.User toChatUiUser() => types.User(id: id);
}
