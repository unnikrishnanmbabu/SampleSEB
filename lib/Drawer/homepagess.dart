import 'package:flutter/material.dart';

void main() {
  runApp(samplesep());
}

class samplesep extends StatefulWidget {
  @override
  State<samplesep> createState() => _samplesepState();
}

class _samplesepState extends State<samplesep> {
  List images = [
    "images/animalfive.jpg",
    "images/animalfour.jpg",
    "images/animalone.jpg",
    "images/animalthree.jpg",
    "images/animaltwo.jpg",
    "images/apple.png",
    "images/banana.png",
  ];

  List<String> captions = [
    'cow',
    'batman',
    'cat',
    'dog',
    'monkey',
    'donkey',
    'lion'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Theme(
          data: Theme.of(context).copyWith(),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text('UNNI'),
                    accountEmail: Text('UNNIEDAYARANZ004@GMAIL.COM'),
                    currentAccountPicture: (CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                    ))),
              ],
            ),
          ),
        ),
        body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(children: [
                Image.asset(images[index]),
                Text(captions[index]),
              ]);
            },
            childCount: images.length,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ),
      ),
    );
  }
}
