import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/app_constant.dart';
import 'package:flutter_chatgpt_sample/features/setting/widgets/locale_list_tile.dart';
import 'package:flutter_chatgpt_sample/features/setting/widgets/setting_about_list_tile.dart';
import 'package:flutter_chatgpt_sample/features/setting/widgets/theme_list_tile.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _appBar(context, ref),
      body: _body(context, ref),
    );
  }

  AppBar _appBar(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(L10n.of(context)!.settingTitle),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppConstant.spacing1),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(AppConstant.spacing1),
                      child: Column(
                        children: const [
                          LocaleListTile(),
                          ThemeListTile(),
                          SettingAboutListTile(),
                        ],
                      ),
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
