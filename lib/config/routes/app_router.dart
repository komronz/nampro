import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';
import 'routes.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LanguageRoute.page,
          path: Routes.initPage,
          initial: true,
        ),
        CustomRoute(
          page: OptionsRoute.page,
          path: Routes.optionsPage,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
        ),
      ];
}
