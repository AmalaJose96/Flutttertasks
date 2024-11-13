import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListView(),
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  // Generate a list of items
  final List<String> items = List.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: ListView.builder(

        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(items[index][0]), // Display first letter of item
              ),
              title: Text(items[index]),
              subtitle: Text("Description of ${items[index]}"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Action when item is tapped
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${items[index]} tapped")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
