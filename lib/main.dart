import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //@TODO: 7- Add Navigation
      //@see: https://flutter.io/docs/cookbook/navigation/named-routes
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Abbeal Meetup #2018'),
    );
  }
}


