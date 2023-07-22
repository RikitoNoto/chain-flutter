import 'package:flutter/material.dart';

class ChainNavigationBar extends StatelessWidget {
  const ChainNavigationBar({
    this.selectedIndex = 0,
    this.onDestinationSelected,
    super.key,
  });

  final int selectedIndex;
  final void Function(int)? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      selectedIndex: selectedIndex,
      height: kBottomNavigationBarHeight,
      destinations: [
        const NavigationDestination(
          icon: Icon(Icons.home),
          label: 'ホーム',
        ),
        const NavigationDestination(
          icon: Icon(Icons.search),
          label: 'さがす',
        ),
        Ink(
          decoration: const BoxDecoration(
            color: Color(0xFFFFA07A),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            splashRadius: 25,
            color: Colors.white,
            icon: const Icon(Icons.post_add),
            onPressed: () => {},
          ),
        ),
        const NavigationDestination(
          icon: Icon(Icons.notifications),
          label: '通知',
        ),
        const NavigationDestination(
          icon: Icon(Icons.account_circle),
          label: 'プロフィール',
        ),
      ],
      onDestinationSelected: onDestinationSelected,
    );
  }
}
