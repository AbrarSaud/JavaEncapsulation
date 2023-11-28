import 'package:athkar_app/components/athkar_card.dart';
import 'package:athkar_app/shared/container_decoration_style.dart';
import 'package:athkar_app/shared/txt_style.dart';
import 'package:athkar_app/utils/constants/spaces.dart';
import 'package:athkar_app/utils/extension/screen_size.dart';
import 'package:flutter/material.dart';

class CategoriesAthkarComponents extends StatelessWidget {
  const CategoriesAthkarComponents({
    super.key,
    required this.athkarName,
    required this.image,
    required this.athkarId,
  });
  final String athkarName;
  final String image;
  final String athkarId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AthkarCard(
            athkarId: athkarId,
            athkarName: athkarName,
          ),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Container(
          decoration: boxDecorationStyle,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      athkarName,
                      style: headerStyle.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
              kHSpace16,
              Container(
                height: context.getHeight * 0.12,
                padding: const EdgeInsets.all(7),
                child: Image.network(image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
