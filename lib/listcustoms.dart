import 'package:flutter/material.dart';

void main() {
  runApp(listcustoms());
}

class listcustoms extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => listcustomsstate();
}

class listcustomsstate extends State {
  @override
  List<String> fruits = ["Apple", "Orange", 'Banana', 'Grapes'];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listview.custom'),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((BuildContext, index) {
            return Card(
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(fruits[index]),
              ),
            );
          }, childCount: fruits.length),
        ),
      ),
    );
  }
}
