import 'package:flutter_chatgpt_sample/features/chat/entities/message.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MessagesNotifier extends StateNotifier<List<Message>> {
  MessagesNotifier({required this.ref}) : super([]);

  final Ref ref;

  void clear() {
    state = [];
  }

  void add(Message message) {
    state = [...state, message];
  }
}
