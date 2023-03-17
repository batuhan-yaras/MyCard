import 'package:flutter/material.dart';
import 'package:mi_card_flutter/core/all_classes.dart';
import 'package:mi_card_flutter/core/texts/card_text_style.dart';
import 'package:mi_card_flutter/core/alert_dialog.dart';

class MailCard extends StatelessWidget {
  const MailCard({super.key, required this.mail});
  final String mail;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return QrAlert(
              webPageName: AllWebPageNames().mail,
              webIcon: AllIcons().mail,
              qrImage: QrCodeImages().mail,
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Card(
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: ColorsUtility().cardTextColor,
            ),
            title: Text(
              mail,
              style: cardTextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
