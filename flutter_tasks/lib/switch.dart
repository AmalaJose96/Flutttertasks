import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchExample(),
    );
  }
}

class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Example")),
      body: Center(
        child: SwitchListTile(
          title: Text("switch"),
          value: isSwitched,
          onChanged: (bool newValue) {
            setState(() {
              isSwitched = newValue;
            });
          },
        ),
      ),
    );
  }
}
