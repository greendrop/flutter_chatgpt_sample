import 'package:flutter_chatgpt_sample/features/locale_setting/repositories/locale_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final localeRepositoryProvider = Provider((ref) => LocaleRepository(ref: ref));
