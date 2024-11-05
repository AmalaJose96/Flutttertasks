import 'package:flutter/material.dart';



class Fluttertask extends StatelessWidget {
  const Fluttertask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stack Example"),
        ),
        body: Stack(
          children: <Widget>[
            // Background widget
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: double.infinity,
            ),

           Image.network(
            'assets/trees.png', 
            width: 300,
            height: 300,
           
          ),
            // Centered Text widget
            const Center(
              child: Text(
                "Hello, Stack!",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            // Positioned widget
            const Positioned(
              bottom: 20,
              right: 20,
              child: Icon(
                Icons.favorite,
                color: Colors.yellow,
                size: 50,
              ),
            ),
          ],
        ),
      
      
      ),
    );
  }
}
