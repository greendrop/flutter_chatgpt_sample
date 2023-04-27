import 'package:auto_route/auto_route.dart';
import 'package:flutter_chatgpt_sample/features/chat/widgets/chat_page.dart';
import 'package:flutter_chatgpt_sample/features/locale_setting/widgets/locale_setting_page.dart';
import 'package:flutter_chatgpt_sample/features/main/widgets/main_page.dart';
import 'package:flutter_chatgpt_sample/features/setting/widgets/setting_page.dart';
import 'package:flutter_chatgpt_sample/features/theme_setting/widgets/theme_setting_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: MainRoute.page,
      children: [
        AutoRoute(
          path: 'chat',
          page: ChatRoute.page,
        ),
        AutoRoute(
          path: 'setting',
          page: SettingRoute.page,
        ),
      ],
    ),
    AutoRoute(
      path: '/setting/theme',
      page: ThemeSettingRoute.page,
    ),
    AutoRoute(
      path: '/setting/locale',
      page: LocaleSettingRoute.page,
    ),
  ];
}
