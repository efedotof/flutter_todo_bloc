import 'package:auto_route/auto_route.dart';
import 'package:todo_bloc/features/featers.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainHomeRoute.page, path: '/', children: [
          AutoRoute(page: HomeRoute.page, path: 'home'),
          AutoRoute(page: CalendartRoute.page, path: 'calendart'),
        ]),
      ];
}
