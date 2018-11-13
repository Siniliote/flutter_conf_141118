import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
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
              title: Text('Cards Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/cards');
              },
            ),
            ListTile(
              title: Text('Listing'),
              onTap: () {
                Navigator.pushNamed(context, '/listing');
              },
            ),
          ],
        ),
      );
  }
}