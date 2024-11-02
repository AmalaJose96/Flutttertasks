import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Item 1',
          style: TextStyle(fontSize: 16, color: Colors.blue),
        ),
        Text(
          'Item 2',
          style: TextStyle(fontSize: 16, color: Colors.green),
        ),
        Text(
          'Item 3',
          style: TextStyle(fontSize: 16, color: Colors.red),
        ),
      ],
    );
  }
}
