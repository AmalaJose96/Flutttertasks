import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(flutter_tasks());
}

class flutter_tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: PressedButton(), 
    );
  }
}
