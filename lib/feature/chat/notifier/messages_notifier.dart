import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_request.dart';
import 'package:flutter_chatgpt_sample/feature/chat/entity/message.dart';
import 'package:flutter_chatgpt_sample/feature/chat/provider/chat_completion_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/user.dart';

class MessagesNotifier extends StateNotifier<List<Message>> {
  MessagesNotifier({required this.ref}) : super([]);

  final Ref ref;

  void clear() {
    state = [];
  }

  Future<void> addAndPost(Message message) async {
    state = [...state, message];

    final data = ChatCompletionRequest(
      model: 'gpt-3.5-turbo',
      messages: [
        ChatCompletionRequestMessage(role: 'user', content: message.text)
      ],
    );
    return ref
        .read(chatCompletionRepositoryProvider)
        .post(data)
        .then((response) {
      final responseMessage = Message(
        id: response.id,
        userId: User.botId,
        text: response.choices.last.message.content,
      );

      state = [...state, responseMessage];
    }).onError((error, stackTrace) {
      return Future.error(error!);
    });
  }
}
