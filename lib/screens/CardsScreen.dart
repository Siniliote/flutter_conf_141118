import 'package:flutter/material.dart';

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
    magicCard = rest_api.randomCard();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<MagicCard>(
          future: this.magicCard,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 480.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: (snapshot.data.imageUrl != null)
                                  ? Image.network(
                                      snapshot.data.imageUrl,
                                      fit: BoxFit.fill,
                                    )
                                  : Image.asset(
                                      "images/Magic_Card_Back.png",
                                      fit: BoxFit.cover,
                                    ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}