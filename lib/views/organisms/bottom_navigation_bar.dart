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
      backgroundColor: Colors.white,
      selectedIndex: selectedIndex,
      height: kBottomNavigationBarHeight,
      indicatorColor: Colors.white,
      destinations: [
        _buildDestinationIcon(
          Icons.home,
        ),
        _buildDestinationIcon(
          Icons.search,
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
        color: const Color(0xFF505050),
      ),
      icon: Icon(
        icon,
        color: const Color(0xFFB0B0B0),
      ),
      label: label,
    );
  }
}
