import 'package:flutter/material.dart';
import 'package:mi_card_flutter/core/all_classes.dart';
import 'package:mi_card_flutter/core/avatar_image.dart';
import 'package:mi_card_flutter/core/cards/github_card.dart';
import 'package:mi_card_flutter/core/cards/linkedin_card.dart';
import 'package:mi_card_flutter/core/cards/mail_card.dart';
import 'package:mi_card_flutter/core/texts/about_text.dart';
import 'package:mi_card_flutter/core/texts/name_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          cardTheme: const CardTheme(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0)),
          dividerTheme: DividerThemeData(
              color: ColorsUtility().aboutTextcolor, thickness: 0.8)),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AvatarImage(avatarRadius: 50), //CircleAvatar
              NameText(name: AllNames().batuhanyaras),
              AboutText(about: AllAbout().batuhanyaras),
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
    return const SizedBox(
      height: 20.0,
      width: 250.0,
      child: Divider(),
    );
  }
}
