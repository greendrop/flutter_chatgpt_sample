import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/route/app_router.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocaleListTile extends HookConsumerWidget {
  const LocaleListTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;

    return ListTile(
      key: const ValueKey('localeListTile'),
      leading: const Icon(FontAwesomeIcons.language),
      title: Text(l10n.localeSettingTitle),
      onTap: () => AutoRouter.of(context).push(const LocaleSettingRoute()),
    );
  }
}
