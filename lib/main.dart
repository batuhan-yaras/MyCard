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
              nameText(name: AllNames().batuhanyaras),
              aboutText(about: AllAbout().batuhanyaras),
              dividerLine(),
              MailCard(mail: AllMails().batuhanyaras),
              LinkedinCard(linkedinUrl: AllLinkedinUrl().batuhanyaras),
              GithubCard(githubUrl: AllGithubUrl().batuhanyaras),
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

class AllNames {
  final String batuhanyaras = 'Batuhan Yaraş';
}

class AllAbout {
  final String batuhanyaras = 'Yildiz Technical University';
}

class AllMails {
  final String batuhanyaras = 'batuhanyaras@yahoo.com';
}

class AllLinkedinUrl {
  final String batuhanyaras = 'linkedin.com/in/batuhanyaras';
}

class AllGithubUrl {
  final String batuhanyaras = 'github.com/batuhan-yaras';
}
