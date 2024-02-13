import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavDestinationComponents extends StatelessWidget {
  const NavDestinationComponents(
      {super.key, required this.assetName, required this.selectedSssetName});
  final String assetName;
  final String selectedSssetName;
  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: SvgPicture.asset(
        assetName,
        width: 25.5,
        color: black,
      ),
      selectedIcon: SvgPicture.asset(
        selectedSssetName,
        width: 25.5,
        // color: primary,
      ),
      label: "",
    );
  }
}
