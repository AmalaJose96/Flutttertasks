import 'package:flutter/material.dart';

void main() => runApp(fluttertask());

class fluttertask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxExample(),
     
    );
  }
}

class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Example")),
      body: Center(
        child: CheckboxListTile(
          title: Text("Check this box"),
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
        ),
      ),
    );
  }
}





  