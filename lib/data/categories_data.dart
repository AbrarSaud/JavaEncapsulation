import 'package:athkar_app/utils/constants/athkar_icons.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';

List categoriesData = [
  [
    "c1",
    "أذكار \n الصباح",
    Icon(
      Icons.wb_sunny_outlined,
      color: white,
      size: 25,
    )
  ],
  [
    "c2",
    "أذكار  \nالمساء",
    Icon(
      LineIcons.moon,
      size: 30,
      color: white,
    )
  ],
  [
    "c3",
    "أذكار  \nالمسجد",
    Icon(
      Athkar.mosque,
      size: 40,
      color: white,
    )
  ],
  [
    "c4",
    "أذكار  \nالصلاة",
    Icon(
      Athkar.pray,
      size: 40,
      color: white,
    )
  ],
  [
    "c5",
    "أذكار \n النوم",
    Icon(
      Athkar.sleep,
      size: 35,
      color: white,
    )
  ],
  [
    "c6",
    "أذكار  \nالاستيقاظ",
    Icon(
      Athkar.wake_up,
      size: 45,
      color: white,
    )
  ],
];
