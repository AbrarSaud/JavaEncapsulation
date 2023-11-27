import 'package:athkar_app/shared/container_decoration_style.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:athkar_app/utils/extension/screen_size.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/background.jpg",
              height: context.getHeight * 0.12,
              width: context.getWidth * 0.9,
              fit: BoxFit.cover,
            ),
            Container(
              width: context.getWidth * 0.9,
              height: context.getHeight * 0.12,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "احفَظِ اللَّهَ تَجِدْهُ تجاهَكَ",
                style: TextStyle(
                    fontSize: 20, color: white, fontFamily: "DINNext_R"),
              ),
              decoration: BoxDecoration(gradient: linearGradientStyle),
            )
          ],
        ),
      ),
    );
  }
}
