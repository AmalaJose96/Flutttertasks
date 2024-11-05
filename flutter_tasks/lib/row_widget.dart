import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.star, color: Colors.red, size: 50.0),
        Text(
          'This is a Row Widget',
          style: TextStyle(fontSize: 18),
        ),
        Icon(Icons.star, color: Colors.red, size: 50.0),
      ],
    );
  }
}
