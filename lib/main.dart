import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/batuhan.jpg'),
            ),
            Text(
              'Batuhan Yaras',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Yildiz Technical University',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 18.0,
                color: Colors.teal[100],
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 250.0,
              child: Divider(
                color: Colors.teal.shade100,
                thickness: 0.8,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade800,
                ),
                title: Text(
                  'batuhanyaras@yahoo.com',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade800,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.teal.shade800,
                ),
                title: Text(
                  'linkedin.com/in/batuhanyaras',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade800,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.teal.shade800,
                ),
                title: Text(
                  'https://github.com/batuhan-yaras',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade800,
                  ),
                ),
              ),
            ),
        ],
          ),
        ),
      ),
    );
  }
}
