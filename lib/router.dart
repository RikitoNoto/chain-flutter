import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:chain/views/pages/login.dart';
import 'package:chain/views/pages/home.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
      AutoRoute(page: HomeRoute.page, path: "/", initial: true),
      AutoRoute(page: LoginRoute.page, path: "/login"),
    ];
}