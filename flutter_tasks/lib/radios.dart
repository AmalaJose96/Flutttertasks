import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioExample(),
    );
  }
}

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}
class _RadioExampleState extends State<RadioExample> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button Example")),
      body: Column(
        children: [
          RadioListTile<int>(
            title: Text("فقعث"),
            value: 1,
            groupValue: selectedValue,
            onChanged: (int? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
          RadioListTile<int>(
            title: Text("بشمسث"),
            value: 2,
            groupValue: selectedValue,
            onChanged: (int? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
