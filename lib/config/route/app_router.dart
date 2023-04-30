import 'package:auto_route/auto_route.dart';
import 'package:flutter_chatgpt_sample/feature/chat/widget/chat_page.dart';
import 'package:flutter_chatgpt_sample/feature/locale_setting/widget/locale_setting_page.dart';
import 'package:flutter_chatgpt_sample/feature/main/widget/main_page.dart';
import 'package:flutter_chatgpt_sample/feature/setting/widget/setting_page.dart';
import 'package:flutter_chatgpt_sample/feature/theme_setting/widget/theme_setting_page.dart';

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
