import 'package:athkar_app/screens/home_screen.dart';
import 'package:athkar_app/components/nav_destination_components.dart';
import 'package:athkar_app/screens/prayers_screen.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int index = 0;

  List screens = [
    const HomeScreen(),
    const PrayersScreen(),
    const PrayersScreen(),
    const PrayersScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: backgroundColor,
          body: screens[index],
          bottomNavigationBar: NavigationBar(
              indicatorColor: transparent,
              backgroundColor: white,
              selectedIndex: index,
              elevation: 20,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              height: 70,
              destinations: const [
                NavDestinationComponents(
                  assetName: 'assets/icons/apps_outlined.svg',
                  selectedSssetName: 'assets/icons/apps.svg',
                ),
                NavDestinationComponents(
                  assetName: 'assets/icons/clock_outlined.svg',
                  selectedSssetName: 'assets/icons/clock.svg',
                ),
                NavDestinationComponents(
                  assetName: 'assets/icons/compass_outlined.svg',
                  selectedSssetName: 'assets/icons/compass.svg',
                ),
                NavDestinationComponents(
                  assetName: 'assets/icons/settings_outlined.svg',
                  selectedSssetName: 'assets/icons/settings.svg',
                ),
              ])),
    );
  }
}
