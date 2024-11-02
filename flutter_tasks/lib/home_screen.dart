import 'package:flutter/material.dart';
import 'counter_widget.dart';

class PressedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Press Button'),
      ),
      body: Center(
        child: CounterWidget(), 
      ),
    );
  }
}
