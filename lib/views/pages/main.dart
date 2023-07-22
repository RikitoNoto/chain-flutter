import 'package:auto_route/auto_route.dart';
import 'package:chain/router.dart';
import 'package:chain/views/organisms/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const HomeRoute(),
        LoginRoute(),
        const HomeRoute(), // dummy
        const HomeRoute(),
        const HomeRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          body: child,
          bottomNavigationBar: ChainNavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
