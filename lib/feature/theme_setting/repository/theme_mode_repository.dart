import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeRepository {
  ThemeModeRepository({required this.ref});

  static const themeModeKey = 'themeMode';
  final Ref ref;

  Future<ThemeMode> fetch() async {
    final prefs = await SharedPreferences.getInstance();
    final themeModeValue = prefs.getString(themeModeKey);
    final themeMode = ThemeMode.values.firstWhere(
      (element) => element.toString() == themeModeValue,
      orElse: () => ThemeMode.system,
    );

    return themeMode;
  }

  Future<void> update(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(themeModeKey, themeMode.toString());
  }
}
