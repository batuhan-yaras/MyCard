import 'package:flutter/material.dart';
import 'package:mi_card_flutter/core/about_text.dart';
import 'package:mi_card_flutter/core/avatar_image.dart';
import 'package:mi_card_flutter/core/github_card.dart';
import 'package:mi_card_flutter/core/linkedin_card.dart';
import 'package:mi_card_flutter/core/mail_card.dart';
import 'package:mi_card_flutter/core/name_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          cardTheme: const CardTheme(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
      )),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AvatarImage(avatarRadius: 50), //CircleAvatar
              const nameText(name: 'Batuhan Yaraş'),
              const aboutText(about: 'Yildiz Technical University'),
              dividerLine(),
              const MailCard(mail: 'batuhanyaras@yahoo.com'),
              const LinkedinCard(linkedinUrl: 'linkedin.com/in/batuhanyaras'),
              const GithubCard(githubUrl: 'https://github.com/batuhan-yaras'),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox dividerLine() {
    return SizedBox(
      height: 20.0,
      width: 250.0,
      child: Divider(
        color: ColorsUtility().teal100,
        thickness: 0.8,
      ),
    );
  }
}

class ColorsUtility {
  final Color? teal100 = Colors.teal[100];
  final Color? teal800 = Colors.teal[800];
}
