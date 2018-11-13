import 'package:flutter/material.dart';

class CardsScreen extends StatefulWidget {
  final String title;

  CardsScreen({this.title});

  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {

  //@TODO: 12- Fetch and Display the data
  //@see: https://flutter.io/docs/cookbook/networking/fetch-data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CardsScreen'),
      ),
    );
  }
}