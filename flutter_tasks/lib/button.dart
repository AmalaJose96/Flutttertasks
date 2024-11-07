import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button Styles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonDemoScreen(),
    );
  }
}

class ButtonDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Styles in Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Elevated Button with custom styling
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                print("Elevated Button Pressed");
              },
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 20),

            // Outlined Button with custom styling
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
              
                side: BorderSide(color: Colors.blueAccent), // Border color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                print("Outlined Button Pressed");
              },
              child: Text("Outlined Button"),
            ),
            SizedBox(height: 20),

            // Text Button with custom styling
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
               
                textStyle: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                print("Text Button Pressed");
              },
              child: Text("Text Button"),
            ),
            SizedBox(height: 20),

            // Icon Button with a custom icon and color
            IconButton(
              icon: Icon(Icons.thumb_up, color: Colors.blueAccent),
              iconSize: 30,
              onPressed: () {
                print("Icon Button Pressed");
              },
            ),
            SizedBox(height: 20),

            // Elevated Button with an Icon (combination)
            ElevatedButton.icon(
              icon: Icon(Icons.send, color: Colors.white),
              label: Text("Send"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                print("Elevated Button with Icon Pressed");
              },
            ),
          ],
        ),
      ),
      
      // Floating Action Button (FAB)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          print("Floating Action Button Pressed");
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
