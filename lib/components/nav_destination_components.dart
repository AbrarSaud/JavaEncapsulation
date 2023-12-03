import 'package:flutter/material.dart';

class NavDestinationComponents extends StatelessWidget {
  const NavDestinationComponents(
      {super.key, required this.icon, required this.selectedIcon});
  final Widget icon;
  final Widget selectedIcon;
  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: icon,
      // SvgPicture.asset(
      selectedIcon: selectedIcon,
      label: "",
    );
  }
}
