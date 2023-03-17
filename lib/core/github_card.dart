import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_card_flutter/product/card_text_style.dart';
import 'package:mi_card_flutter/core/alert_dialog.dart';
import 'package:mi_card_flutter/product/all_classes.dart';

class GithubCard extends StatelessWidget {
  const GithubCard({super.key, required this.githubUrl});
  final String githubUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return QrAlert(
              webPageName: AllWebPageNames().github,
              webIcon: AllIcons().github,
              qrImage: QrCodeImages().github,
            );
          },
        );
      },
      child: Card(
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
      ),
    );
  }
}
