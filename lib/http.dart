import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http; // HTTP uses to call Server

import 'models/magic_card.dart';

const String API = 'http://api.magicthegathering.io/v1/';

// Method used to 'GET' from Server
Future<http.Response> getByUrlPath({String url}) async => http.get(url);

Future<MagicCard> getCard({int id}) async {
  final String urlPath = 'cards';

  final http.Response response =
      await getByUrlPath(url: "$API/$urlPath/$id");

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return MagicCard.fromJson(json.decode(response.body)['card']);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}
