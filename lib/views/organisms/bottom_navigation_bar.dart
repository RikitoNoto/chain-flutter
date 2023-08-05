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
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      selectedIndex: selectedIndex,
      height: kBottomNavigationBarHeight,
      destinations: [
        _buildDestinationIcon(
          Icons.home,
        ),
        _buildDestinationIcon(
          Icons.search,
        ),
        Ink(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            splashRadius: 25,
            color: Theme.of(context).colorScheme.onPrimary,
            icon: const Icon(Icons.post_add),
            onPressed: () => {},
          ),
        ),
        _buildDestinationIcon(
          Icons.notifications,
        ),
        _buildDestinationIcon(
          Icons.account_circle,
        ),
      ],
      onDestinationSelected: onDestinationSelected,
    );
  }

  NavigationDestination _buildDestinationIcon(IconData icon,
      {String label = ''}) {
    return NavigationDestination(
      selectedIcon: Icon(
        icon,
      ),
      icon: Icon(
        icon,
      ),
      label: label,
    );
  }
}
