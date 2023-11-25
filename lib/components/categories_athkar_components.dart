import 'package:athkar_app/components/athkar_card.dart';
import 'package:athkar_app/utils/constants/spaces.dart';
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
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.all(7),
                child: Image.network(image),
              ),
              kHSpace16,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      athkarName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
