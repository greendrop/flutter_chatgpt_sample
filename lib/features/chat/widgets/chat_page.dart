import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chatgpt_sample/features/chat/entities/message.dart'
    as entities;
import 'package:flutter_chatgpt_sample/features/chat/entities/user.dart'
    as entities;
import 'package:flutter_chatgpt_sample/features/chat/providers/messages_notifier_provider.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class ChatPage extends HookConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _appBar(context, ref),
      body: _body(context, ref),
    );
  }

  AppBar _appBar(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(L10n.of(context)!.chatTitle),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    final user = useMemoized(() => entities.User.me().toChatUiUser());
    final messages = ref.watch(messagesNotifierProvider);

    return Chat(
      messages: messages.reversed
          .map((message) => message.toChatUiMessage())
          .toList(),
      onSendPressed: (partialText) {
        final message = entities.Message(
          id: const Uuid().v4(),
          userId: user.id,
          text: partialText.text,
          createdAt: DateTime.now(),
        );
        ref.read(messagesNotifierProvider.notifier).add(message);
      },
      user: user,
    );
  }
}
