import 'package:flutter_chatgpt_sample/features/chat/entities/message.dart';
import 'package:flutter_chatgpt_sample/features/chat/notifiers/messages_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final messagesNotifierProvider =
    StateNotifierProvider<MessagesNotifier, List<Message>>(
  (ref) => MessagesNotifier(ref: ref),
);
