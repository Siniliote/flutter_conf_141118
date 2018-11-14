import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../widget/card_widget.dart';
import '../models/magic_card.dart';
import '../http.dart' as rest_api;

class CardsScreen extends StatefulWidget {
  final String title;

  CardsScreen({this.title});

  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  Future<MagicCard> magicCard;

  @override
  void initState() {
    super.initState();
    _randomize();
  }

  void _randomize() {
    magicCard = rest_api.getCard(id: math.Random().nextInt(500));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title)),
      body: new Center(
        child: FutureBuilder<MagicCard>(
          future: this.magicCard,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CardWidget(card: snapshot.data);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return new CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
