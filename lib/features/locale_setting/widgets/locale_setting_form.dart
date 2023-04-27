import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/features/locale_setting/providers/locale_state_notifier_provider.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocaleSettingForm extends HookConsumerWidget {
  const LocaleSettingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final locale = ref.watch(localeStateNotifierProvider);
    final l10n = L10n.of(context)!;

    return Form(
      key: formKey,
      child: Column(
        children: [
          RadioListTile<Locale?>(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Text(l10n.localeSettingSystem),
            value: null,
            groupValue: locale,
            onChanged: (value) {
              _onChanged(context: context, ref: ref, locale: value);
            },
          ),
          RadioListTile<Locale>(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Text(l10n.localeSettingEnglish),
            value: const Locale('en'),
            groupValue: locale,
            onChanged: (value) {
              _onChanged(context: context, ref: ref, locale: value);
            },
          ),
          RadioListTile<Locale?>(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Text(l10n.localeSettingJapanese),
            value: const Locale('ja'),
            groupValue: locale,
            onChanged: (value) {
              _onChanged(context: context, ref: ref, locale: value);
            },
          ),
        ],
      ),
    );
  }

  void _onChanged({
    required BuildContext context,
    required WidgetRef ref,
    required Locale? locale,
  }) {
    ref.read(localeStateNotifierProvider.notifier).setLocale(locale);
  }
}
