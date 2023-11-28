import 'package:athkar_app/components/home_component.dart';
import 'package:athkar_app/components/nav_destination_components.dart';
import 'package:athkar_app/screens/prayers_screen.dart';
import 'package:athkar_app/utils/constants/athkar_icons.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List screens = [
    const HomeComponent(),
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
                  icon: Icon(Athkar.noun_apps_3815026),
                  selectedIcon: Icon(
                    Athkar.noun_apps_3815026,
                    color: primary,
                    size: 30,
                  ),
                ),
                NavDestinationComponents(
                  icon: Icon(
                    Athkar.noun_clock_6325699,
                    size: 35,
                  ),
                  selectedIcon: Icon(
                    Athkar.noun_clock_6325712,
                    color: primary,
                    size: 35,
                  ),
                ),
                NavDestinationComponents(
                  icon: Icon(
                    Athkar.noun_compass_6324639,
                    size: 35,
                  ),
                  selectedIcon: Icon(
                    Athkar.noun_compass_6324606,
                    size: 45,
                    color: primary,
                  ),
                ),
                NavDestinationComponents(
                  icon: Icon(
                    Icons.settings_outlined,
                  ),
                  selectedIcon: Icon(
                    Icons.settings,
                    color: primary,
                  ),
                ),
              ])),
    );
  }
}
