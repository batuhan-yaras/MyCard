import 'package:flutter/material.dart';
import 'package:mi_card_flutter/core/card_text_style.dart';
import 'package:mi_card_flutter/main.dart';

class MailCard extends StatelessWidget {
  const MailCard({super.key, required this.mail});
  final String mail;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.email,
          color: ColorsUtility().teal800,
        ),
        title: Text(
          mail,
          style: cardTextStyle(),
        ),
      ),
    );
  }
}
