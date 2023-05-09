import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final openAiDioProvider =
    Provider((_) => Dio(BaseOptions(baseUrl: 'https://api.openai.com')));
