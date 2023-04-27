import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/app_root.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: AppRoot()));
}
