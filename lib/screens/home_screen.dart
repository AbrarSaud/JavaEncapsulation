import 'package:athkar_app/components/home_component.dart';
import 'package:athkar_app/components/nav_destination_components.dart';
import 'package:athkar_app/screens/prayers_screen.dart';
import 'package:athkar_app/utils/constants/athkar_icons.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List pages = [
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
          body: pages[index],
          bottomNavigationBar: NavigationBar(
              indicatorColor: Colors.transparent,
              selectedIndex: index,
              elevation: 8,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              height: 70,
              destinations: const [
                NavDestinationComponents(
                  icon: Icon(Athkar.noun_apps_3815026),

                  /// noun_apps_4023104,
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
                  // noun_compass_6324606,
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
                  // label: 'الاعدادت'
                ),
              ])),
    );
  }
// iconsax
  // _changeItem(int value) {
  //   setState(() {
  //     index = value;
  //   });
  // }
}
