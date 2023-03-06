import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_card_flutter/core/card_text_style.dart';
import 'package:mi_card_flutter/main.dart';

class GithubCard extends StatelessWidget {
  const GithubCard({super.key, required this.githubUrl});
  final String githubUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          FontAwesomeIcons.github,
          color: ColorsUtility().teal800,
        ),
        title: Text(
          githubUrl,
          style: cardTextStyle(),
        ),
      ),
    );
  }
}
