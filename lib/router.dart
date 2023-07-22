import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:chain/views/pages/login.dart';
import 'package:chain/views/pages/main.dart';
import 'package:chain/views/pages/home.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, path: "/", children: [
          AutoRoute(page: HomeRoute.page, path: "home"),
          AutoRoute(page: HomeRoute.page, path: "search"),
          AutoRoute(page: HomeRoute.page, path: "post"),
          AutoRoute(page: LoginRoute.page, path: "notifications"),
          AutoRoute(page: LoginRoute.page, path: "profile"),
        ]),
        AutoRoute(page: LoginRoute.page, path: "/login"),
      ];
}
