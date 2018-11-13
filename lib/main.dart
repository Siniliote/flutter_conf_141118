import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //@TODO: 2- Change color to Colors.red
        primarySwatch: Colors.blue,
      ),
      //@TODO: 1- Change title "Abbeal Meetup #2018"
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


