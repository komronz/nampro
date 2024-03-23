// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:nampro/core/data/safety_models.dart' as _i7;
import 'package:nampro/features/categories/pages/categories_page.dart' as _i1;
import 'package:nampro/features/details/pages/category_details_page.dart'
    as _i2;
import 'package:nampro/features/language/pages/language_page.dart' as _i3;
import 'package:nampro/features/options/pages/options_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CategoriesPage(
          key: args.key,
          categories: args.categories,
          title: args.title,
        ),
      );
    },
    CategoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailsRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CategoryDetailsPage(
          key: args.key,
          title: args.title,
          safetyBody: args.safetyBody,
        ),
      );
    },
    LanguageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LanguagePage(),
      );
    },
    OptionsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OptionsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesPage]
class CategoriesRoute extends _i5.PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    _i6.Key? key,
    required List<_i7.Category> categories,
    required String title,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(
            key: key,
            categories: categories,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i5.PageInfo<CategoriesRouteArgs> page =
      _i5.PageInfo<CategoriesRouteArgs>(name);
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({
    this.key,
    required this.categories,
    required this.title,
  });

  final _i6.Key? key;

  final List<_i7.Category> categories;

  final String title;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, categories: $categories, title: $title}';
  }
}

/// generated route for
/// [_i2.CategoryDetailsPage]
class CategoryDetailsRoute extends _i5.PageRouteInfo<CategoryDetailsRouteArgs> {
  CategoryDetailsRoute({
    _i6.Key? key,
    required String title,
    required _i7.SafetyBody safetyBody,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          CategoryDetailsRoute.name,
          args: CategoryDetailsRouteArgs(
            key: key,
            title: title,
            safetyBody: safetyBody,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryDetailsRoute';

  static const _i5.PageInfo<CategoryDetailsRouteArgs> page =
      _i5.PageInfo<CategoryDetailsRouteArgs>(name);
}

class CategoryDetailsRouteArgs {
  const CategoryDetailsRouteArgs({
    this.key,
    required this.title,
    required this.safetyBody,
  });

  final _i6.Key? key;

  final String title;

  final _i7.SafetyBody safetyBody;

  @override
  String toString() {
    return 'CategoryDetailsRouteArgs{key: $key, title: $title, safetyBody: $safetyBody}';
  }
}

/// generated route for
/// [_i3.LanguagePage]
class LanguageRoute extends _i5.PageRouteInfo<void> {
  const LanguageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OptionsPage]
class OptionsRoute extends _i5.PageRouteInfo<void> {
  const OptionsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OptionsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
