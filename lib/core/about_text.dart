import 'package:flutter/material.dart';

class aboutText extends StatelessWidget {
  const aboutText({super.key, required this.about});
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
      color: Colors.teal[100],
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    );
  }
}
