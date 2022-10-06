import 'package:flutter/material.dart';

void main() {
  runApp(samplesep());
}

class samplesep extends StatelessWidget {
  List Imagecaptions = [
    ["images/animalfive.jpg", "ANIMAL 1"],
    ["images/animalfour.jpg", "DUCK"],
    ["images/animalone.jpg", "ANIMAL 2"],
    ["images/animalthree.jpg", "CAT"],
    ["images/animaltwo.jpg", "PANDA"],
    ["images/apple.png", "APPLE"],
    ["images/banana.png", "BANANA"],
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
          body: GridView.count(
            crossAxisCount: 4,
            children: [
              ...Imagecaptions.map(
                (e) => Column(
                  children: [
                    Image.asset(
                      e.first,
                      height: 250,
                      width: 250,
                    ),
                    Container(
                      child: 
                      Text(e.last)
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
