import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'screens/CardsScreen.dart';
import 'screens/ListScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listing - Abbeal Meetup #2018',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Abbeal Meetup #2018 - FlutterMagic'),
        '/cards': (context) => CardsScreen(title:'Random Cards'),
        '/listing': (context) => ListScreen(title: 'Listing - Abbeal Meetup #2018'),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}


