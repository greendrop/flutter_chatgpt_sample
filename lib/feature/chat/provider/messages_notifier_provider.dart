import 'package:flutter_chatgpt_sample/feature/chat/entity/message.dart';
import 'package:flutter_chatgpt_sample/feature/chat/notifier/messages_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messagesNotifierProvider =
    StateNotifierProvider<MessagesNotifier, List<Message>>(
  (ref) => MessagesNotifier(ref: ref),
);
