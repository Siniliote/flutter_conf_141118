import 'package:flutter/material.dart';

import 'listing.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      //@TODO: 9- Specifying assets
      //@see: https://flutter.io/docs/development/ui/assets-and-images
      body: Center(child: Text('My Page!')),
      //@TODO: 8- Move Drawer in Widget
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Listing'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return MyListingPage(title: 'Listing - Abbeal Meetup #2018');
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
