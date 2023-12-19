import 'package:athkar_app/components/athkar_card.dart';
import 'package:athkar_app/shared/container_decoration_style.dart';
import 'package:athkar_app/shared/txt_style.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesAthkarComponent extends StatelessWidget {
  const CategoriesAthkarComponent(
      {super.key,
      required this.athkarName,
      required this.icon,
      required this.athkarId, required this.athkarTitle, });
  final String athkarName;
  final Widget icon;
  final String athkarId;
  final String athkarTitle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AthkarCard(
            athkarId: athkarId,
            athkarName: athkarTitle,
          ),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Material(
          elevation: 15,
          borderRadius: BorderRadius.circular(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, right: 10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: cardLinearGradientStyle,
                        // color: primary.withOpacity(0.9),
                        shape: BoxShape.circle),
                    child: icon,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17, top: 10),
                child: Text(
                  athkarName,
                  style: headerStyle.copyWith(
                      fontWeight: FontWeight.w900,
                      color: primary,
                      fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
