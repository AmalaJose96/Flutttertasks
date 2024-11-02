import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(flutter_tasks());
}

class flutter_tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scaffold, Text, Row, Column, Icon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
