import 'package:flutter/material.dart';
import '../models/magic_card.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key key, this.card}) : super(key: key);

  final MagicCard card;

  @override
  Widget build(BuildContext context) {
    Image img = Image.network(this.card.imageUrl, fit: BoxFit.fill);

    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          img,
          SizedBox(height: 10.0),
          Text(
            this.card.name,
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
