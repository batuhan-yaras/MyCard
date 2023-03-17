import 'package:flutter/material.dart';
import 'package:mi_card_flutter/core/all_classes.dart';

class AboutText extends StatelessWidget {
  const AboutText({super.key, required this.about});
  final String about;
  @override
  Widget build(BuildContext context) {
    return Text(
      about,
      style: _aboutTextStyle(),
    );
  }

  TextStyle _aboutTextStyle() {
    return TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 18.0,
      color: ColorsUtility().aboutTextcolor,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    );
  }
}
