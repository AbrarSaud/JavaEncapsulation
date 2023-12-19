import 'package:athkar_app/components/app_bar_component.dart';
import 'package:athkar_app/components/athkar_count_component.dart';
import 'package:athkar_app/main.dart';
import 'package:athkar_app/shared/container_decoration_style.dart';
import 'package:athkar_app/shared/txt_style.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:athkar_app/utils/constants/spaces.dart';
import 'package:athkar_app/utils/extension/screen_size.dart';
import 'package:flutter/material.dart';

class AthkarCard extends StatefulWidget {
  const AthkarCard(
      {super.key, required this.athkarId, required this.athkarName});
  final String athkarId;
  final String athkarName;

  @override
  State<AthkarCard> createState() => _AthkarCardState();
}

class _AthkarCardState extends State<AthkarCard> {
  @override
  Widget build(BuildContext context) {
    final checkedId = listAthkarData
        .where((element) => element.categories!.contains(widget.athkarId))
        .toList();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBarComponent(
          title: widget.athkarName,
          isBackButton: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView.builder(
            itemCount: checkedId.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  kVSpace8,
                  Card(
                    margin: const EdgeInsets.all(8.0),
                    elevation: 5.5,
                    shadowColor: secondTWO,
                    shape: borderRadiusOfAthkarCard,
                    color: white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                          // height: context.getHeight * 0.1,
                          width: context.getWidth * 0.9,
                          child: Column(
                            children: [
                              Text(
                                checkedId[index].text!,
                                textAlign: TextAlign.right,
                                style: subStyle,
                              ),
                              const Divider(
                                color: black,
                                indent: 20,
                                endIndent: 20,
                              ),
                              AthkarCountComponent(
                                athkarCount: checkedId[index].count!,
                              )
                            ],
                          )),
                    ),
                  ),
                  kVSpace8
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
