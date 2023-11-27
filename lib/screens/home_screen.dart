import 'package:athkar_app/components/categories_athkar_components.dart';
import 'package:athkar_app/components/home_component.dart';
import 'package:athkar_app/data/categories_data.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int index = 0;

    List pages = [
      const HomeComponent(),
    ];
    return Scaffold(
        backgroundColor: backgroundColor,
        body: pages.elementAt(index),
        bottomNavigationBar: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15),
          child:  GNav(gap: 8, tabs: [
            GButton(
              icon: Icons.menu_sharp,
              text: 'اذكار',
            ),
            GButton(
              icon: Icons.timer,
              text: 'الصلوات',
            ),
            GButton(
              icon: Icons.compass_calibration,
              text: 'القبلة',
            ),
            GButton(
              icon: Icons.settings_outlined,
              text: 'الاعدادت',
            ),
          ]),
        ));
  }

  // _changeItem(int value) {
  //   setState(() {
  //     index = value;
  //   });
  // }
}

// HomeComponent
// Home
