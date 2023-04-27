import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/features/theme_setting/providers/theme_mode_state_notifier_provider.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeSettingForm extends HookConsumerWidget {
  const ThemeSettingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final themeMode = ref.watch(themeModeStateNotifierProvider);
    final l10n = L10n.of(context)!;

    return Form(
      key: formKey,
      child: Column(
        children: [
          RadioListTile<ThemeMode>(
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: const Icon(FontAwesomeIcons.gear),
            title: Text(l10n.themeSettingSystem),
            value: ThemeMode.system,
            groupValue: themeMode,
            onChanged: (value) {
              _onChanged(context: context, ref: ref, themeMode: value);
            },
          ),
          RadioListTile<ThemeMode>(
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: const Icon(FontAwesomeIcons.sun),
            title: Text(l10n.themeSettingLight),
            value: ThemeMode.light,
            groupValue: themeMode,
            onChanged: (value) {
              _onChanged(context: context, ref: ref, themeMode: value);
            },
          ),
          RadioListTile<ThemeMode>(
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: const Icon(FontAwesomeIcons.moon),
            title: Text(l10n.themeSettingDark),
            value: ThemeMode.dark,
            groupValue: themeMode,
            onChanged: (value) {
              _onChanged(context: context, ref: ref, themeMode: value);
            },
          ),
        ],
      ),
    );
  }

  void _onChanged({
    required BuildContext context,
    required WidgetRef ref,
    required ThemeMode? themeMode,
  }) {
    ref
        .read(themeModeStateNotifierProvider.notifier)
        .setThemeMode(themeMode ?? ThemeMode.system);
  }
}
