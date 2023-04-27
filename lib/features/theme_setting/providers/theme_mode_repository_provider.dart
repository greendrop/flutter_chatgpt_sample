import 'package:flutter_chatgpt_sample/features/theme_setting/repositories/theme_mode_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeRepositoryProvider =
    Provider((ref) => ThemeModeRepository(ref: ref));
