import 'package:flutter/material.dart';
import 'package:mi_card_flutter/core/all_classes.dart';

TextStyle cardTextStyle() {
  return TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 15.0,
    letterSpacing: 0.5,
    fontWeight: FontWeight.bold,
    color: ColorsUtility().cardTextColor,
  );
}
