// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    LocaleSettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocaleSettingPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatPage(),
      );
    },
    ThemeSettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThemeSettingPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
  };
}

/// generated route for
/// [LocaleSettingPage]
class LocaleSettingRoute extends PageRouteInfo<void> {
  const LocaleSettingRoute({List<PageRouteInfo>? children})
      : super(
          LocaleSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocaleSettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ThemeSettingPage]
class ThemeSettingRoute extends PageRouteInfo<void> {
  const ThemeSettingRoute({List<PageRouteInfo>? children})
      : super(
          ThemeSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemeSettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
