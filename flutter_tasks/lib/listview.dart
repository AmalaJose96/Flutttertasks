import 'package:flutter/material.dart';

void main() {
  runApp(Listview());
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Simple ListView")),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.near_me),
              title: Text("Amala"),
            ),
            ListTile(
              leading: Icon(Icons.import_contacts),
              title: Text("Anju"),
            ),
            ListTile(
              leading: Icon(Icons.import_contacts),
              title: Text("Achu"),
            ),
          ],
        ),
      ),
    );
  }
}
