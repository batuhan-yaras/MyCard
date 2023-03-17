import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_card_flutter/product/card_text_style.dart';
import 'package:mi_card_flutter/core/alert_dialog.dart';
import 'package:mi_card_flutter/product/all_classes.dart';

class LinkedinCard extends StatelessWidget {
  const LinkedinCard({super.key, required this.linkedinUrl});
  final String linkedinUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return QrAlert(
              webPageName: AllWebPageNames().linkedin,
              webIcon: AllIcons().linkedin,
              qrImage: QrCodeImages().linkedin,
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Card(
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
        ),
      ),
    );
  }
}
