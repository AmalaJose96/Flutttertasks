import 'package:flutter/material.dart';

import 'flutterr_day3.dart';
import 'textfield.dart';


void main() {
  // ignore: prefer_const_constructors
  runApp(flutter_tasks());
}

// ignore: camel_case_types
class flutter_tasks extends StatelessWidget {
  const flutter_tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scaffold, Text, Row, Column, Icon',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
     
      home:   Auth(),
     
    );
  }
}
