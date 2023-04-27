import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/app_constant.dart';
import 'package:flutter_chatgpt_sample/features/locale_setting/widgets/locale_setting_form.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LocaleSettingPage extends HookConsumerWidget {
  const LocaleSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _appBar(context, ref),
      body: _body(context, ref),
    );
  }

  AppBar _appBar(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;

    return AppBar(
      title: Text(l10n.localeSettingTitle),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppConstant.spacing1),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(AppConstant.spacing1),
                      child: LocaleSettingForm(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
