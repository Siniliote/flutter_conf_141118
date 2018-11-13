import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Image.asset("images/Magic-the-gathering-logo.png"),
      ),
      drawer: MyDrawer(),
    );
  }
}
