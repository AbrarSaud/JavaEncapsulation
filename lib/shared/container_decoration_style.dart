import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

var boxDecorationStyle = BoxDecoration(
    color: Colors.grey[200],
    border: Border.all(color: Colors.white30),
    borderRadius: BorderRadius.circular(20));

var linearGradientStyle = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    secondONE.withOpacity(0.7),
    primary.withOpacity(0.8),
    primary.withOpacity(1)
  ],
);
var cardLinearGradientStyle = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    primary.withOpacity(0.8),
    secondONE.withOpacity(0.7),
  ],
);
