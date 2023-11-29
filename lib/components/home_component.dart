import 'package:athkar_app/components/app_bar_component.dart';
import 'package:athkar_app/components/card_component.dart';
import 'package:athkar_app/components/categories_athkar_components_two.dart';
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
      appBar: const AppBarComponent(
        title: 'الأذكـار',
      ),
      body: SafeArea(
        child: Column(children: [
          const CardComponent(),
          kVSpace24,
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1 / 1,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 15),
                    itemBuilder: (BuildContext context, int index) {
                      return CategoriesAthkarComponent(
                        athkarId: categoriesData[index][0],
                        athkarName: categoriesData[index][1],
                        icon: categoriesData[index][2],
                      );
                    },
                    itemCount: categoriesData.length,
                  )))
        ]),
      ),
    );
  }
}
