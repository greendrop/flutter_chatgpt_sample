import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/config/routes/app_router.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        ChatRoute(),
        SettingRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final l10n = L10n.of(context)!;

        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.comments),
              label: l10n.chatTitle,
            ),
            BottomNavigationBarItem(
              icon: const Icon(FontAwesomeIcons.gear),
              label: l10n.settingTitle,
            ),
          ],
        );
      },
    );
  }
}
