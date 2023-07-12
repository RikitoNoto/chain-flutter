import 'package:auto_route/auto_route.dart';
import 'package:chain_flutter/views/pages/login.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {

 @override
 List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: "/", initial: true),
    // AutoRoute(page: LoginRoute.page, path: "/login"),
  ];
}