import 'package:athkar_app/main.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AthkarCard extends StatelessWidget {
  const AthkarCard(
      {super.key, required this.athkarId, required this.athkarName});
  final String athkarId;
  final String athkarName;
  @override
  Widget build(BuildContext context) {
    final checkedId = listAthkarData
        .where((element) => element.categories!.contains(athkarId))
        .toList();

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView.builder(
          itemCount: checkedId.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(checkedId[index].text!),
              ),
            );
          }),
    );
  }
}
