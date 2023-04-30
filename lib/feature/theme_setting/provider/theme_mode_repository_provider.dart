import 'package:flutter_chatgpt_sample/feature/theme_setting/repository/theme_mode_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeRepositoryProvider =
    Provider((ref) => ThemeModeRepository(ref: ref));
