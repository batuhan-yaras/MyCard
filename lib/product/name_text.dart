import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  const NameText({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: _nameTextStyle(),
    );
  }

  TextStyle _nameTextStyle() {
    return const TextStyle(
      fontFamily: 'Pacifico',
      fontSize: 40.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }
}
