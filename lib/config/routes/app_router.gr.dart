// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:nampro/features/language/pages/language_page.dart' as _i1;
import 'package:nampro/features/options/pages/options_page.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LanguageRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LanguagePage(),
      );
    },
    OptionsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OptionsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LanguagePage]
class LanguageRoute extends _i3.PageRouteInfo<void> {
  const LanguageRoute({List<_i3.PageRouteInfo>? children})
      : super(
          LanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OptionsPage]
class OptionsRoute extends _i3.PageRouteInfo<void> {
  const OptionsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OptionsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
