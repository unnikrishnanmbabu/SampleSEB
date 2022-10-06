import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List2(),
  ));
}

class List2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => List2State();
}

class List2State extends State {
  List<String> fruits = ["Apple", "Orange", 'Banana', 'Grapes'];

  List<String> images = [
    "images/apple.png",
    "images/orange.png",
    "images/banana.png",
    "images/grapes.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.Builder"),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((BuildContext, index) {
          return Card(
              color: Colors.amberAccent,
              child: ListTile(
                leading: Image.asset(images[index]),
                title: Text(fruits[index]),
              ));
        }, childCount: fruits.length,
        )
        
      ),
      // body: ListView.separated(

      //     itemBuilder: (BuildContext, index) {
      //       return Card(
      //         child: ListTile(
      //           leading: Image.asset(images[index]),
      //           title: Text(fruits[index]),
      //         ),
      //       );
      //     },
      //     separatorBuilder: (BuildContext, index) {
      //       return const Divider(
      //         thickness: 3,indent: 20.0,endIndent: 20.0,
      //         height: 20.0,
      //         color: Colors.black,
      //       );
      //     },
      //     itemCount: images.length)

      // body: ListView.builder(itemBuilder: (BuildContext context, index) {
      //   return Card(color: Colors.amber,
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: ListTile(
      //         leading: Image.asset(images[index]),
      //         title: Text(fruits[index]),
      //       ),
      //     ),
      //   );
      // },
      // itemCount: images.length,)
      // ListView.builder(
      //   itemBuilder: (BuildContext, index) {
      //     return Card(
      //       child: ListTile(
      //         leading: Image.asset(images[index]),
      //         title: Text(fruits[index]),
      //       ),
      //     );
      //   },
      //   itemCount: images.length,
      // )
    );
  }
}
