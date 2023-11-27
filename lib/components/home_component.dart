import 'package:athkar_app/components/card_component.dart';
import 'package:athkar_app/components/categories_athkar_components.dart';
import 'package:athkar_app/data/categories_data.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:athkar_app/utils/constants/spaces.dart';
import 'package:flutter/material.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(children: [
          kVSpace32,
          const CardComponent(),
          kVSpace24,
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView.builder(
                itemCount: categoriesData.length,
                itemBuilder: (context, index) {
                  return CategoriesAthkarComponents(
                    athkarId: categoriesData[index][0],
                    athkarName: categoriesData[index][1],
                    image: categoriesData[index][2],
                  );
                }),
          ))
        ]),
      ),
    );
  }
}
