import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_card_flutter/core/card_text_style.dart';
import 'package:mi_card_flutter/main.dart';

class LinkedinCard extends StatelessWidget {
  const LinkedinCard({super.key, required this.linkedinUrl});
  final String linkedinUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          FontAwesomeIcons.linkedin,
          color: ColorsUtility().teal800,
        ),
        title: Text(
          linkedinUrl,
          style: cardTextStyle(),
        ),
      ),
    );
  }
}
