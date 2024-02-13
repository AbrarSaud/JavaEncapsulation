import 'package:athkar_app/data/app_data.dart';
import 'package:athkar_app/model/athkar_data.dart';
import 'package:athkar_app/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<AthkarData> listAthkarData = [];

void main() {
  for (var element in listAthkar["itemsData"]) {
    listAthkarData.add(AthkarData.fromJson(element));
  }

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarScreen(),
    );
  }
}
