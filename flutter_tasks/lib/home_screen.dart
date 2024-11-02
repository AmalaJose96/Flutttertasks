import 'package:flutter/material.dart';
import 'row_widget.dart';
import 'column_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomRowWidget(),
            const SizedBox(height: 20), 
            CustomColumnWidget(),
          ],
        ),
      ),
    );
  }
}
