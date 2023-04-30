import 'package:flutter_chatgpt_sample/feature/chat/repository/chat_completion_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatCompletionRepositoryProvider =
    Provider((ref) => ChatCompletionRepository(ref: ref));
