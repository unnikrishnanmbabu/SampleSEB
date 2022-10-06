import 'package:flutter/material.dart';

void main() {
  runApp(samplemay());
}

class samplemay extends StatelessWidget {
  List<String> fruits = [
    "Apple",
    "Orange",
    'Banana',
    'Grapes',
    "Apple",
    "Orange",
    'Banana',
    'Grapes',
    "Apple",
    "Orange",
    'Banana',
    'Grapes',
    "Apple",
    "Orange",
    'Banana',
    'Grapes',
    "Apple",
    "Orange",
    'Banana',
    'Grapes',
    "Apple",
    "Orange",
    'Banana',
    'Grapes'
  ];

  List<String> images = [
    "images/apple.png",
    "images/orange.png",
    "images/banana.png",
    "images/grapes.png",
    "images/apple.png",
    "images/orange.png",
    "images/banana.png",
    "images/grapes.png",
    "images/apple.png",
    "images/orange.png",
    "images/banana.png",
    "images/grapes.png",
    "images/apple.png",
    "images/orange.png",
    "images/banana.png",
    "images/grapes.png",
    "images/apple.png",
    "images/orange.png",
    "images/banana.png",
    "images/grapes.png",
    "images/apple.png",
    "images/orange.png",
    "images/banana.png",
    "images/grapes.png"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: GridView(
        //     gridDelegate:
        //         const SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 6,
        //         mainAxisSpacing: 50,crossAxisSpacing: 50,
        //         ),
        //         scrollDirection: Axis.horizontal,
        //         children: [Container(
        //           decoration: const BoxDecoration(
        //           image: DecorationImage(image: AssetImage('images/animalone.jpg'))),child: Text('hai baby'),),

        //           const Text('new baby'),
        //            Image.network('https://picsum.photos/250?image=2'),
        //            Image.network('https://picsum.photos/250?image=3'),
        //            Image.network('https://picsum.photos/250?image=4'),
        //            Image.network('https://picsum.photos/250?image=1'),
        //            Image.network('https://picsum.photos/250?image=2'),
        //            Image.network('https://picsum.photos/250?image=3'),
        //            Image.network('https://picsum.photos/250?image=4'),
        //            Image.network('https://picsum.photos/250?image=2'),
        //            Image.network('https://picsum.photos/250?image=3'),
        //            Image.network('https://picsum.photos/250?image=4'),
        //            Image.network('https://picsum.photos/250?image=1'),
        //            Image.network('https://picsum.photos/250?image=2'),
        //            Image.network('https://picsum.photos/250?image=3'),
        //            Image.network('https://picsum.photos/250?image=4'),
        //            Image.network('https://picsum.photos/250?image=2'),
        //            Image.network('https://picsum.photos/250?image=3'),
        //            Image.network('https://picsum.photos/250?image=4'),
        //            Image.network('https://picsum.photos/250?image=1'),
        //            Image.network('https://picsum.photos/250?image=2'),
        //            Image.network('https://picsum.photos/250?image=3'),
        //            Image.network('https://picsum.photos/250?image=4'),
        //         ],

        //         ),
        // body: GridView.extent(
        //   maxCrossAxisExtent: 200,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   scrollDirection: Axis.vertical,
        //   children: [
        //     Container(
        //       color: Colors.amberAccent
        //     ),
        //     Container(
        //       color: Colors.blue
        //     ),
        //     Container(
        //       color: Colors.red
        //     ),
        //     Container(
        //       color: Colors.green
        //     ),
        //     Card(
        //       color: Colors.black,
        //     )]
        // body: GridView.builder(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 4,
        //       //mainAxisSpacing: 5, crossAxisSpacing: 5
        //       ),
        //   itemBuilder: (BuildContext, index) {
        //     return Column(children: [
        //       Image.asset(images[index]),
        //       Text(fruits[index]),
        //     ]);
        //   },
        //   itemCount: images.length,
        // ),
        body: SizedBox(width: double.infinity,
          child: GridView.custom(scrollDirection: Axis.horizontal,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),
            childrenDelegate: SliverChildBuilderDelegate((context, index){
                return Column(children: [
                Image.asset(images[index]),
                Text(fruits[index]),
              ]);
              },childCount:images.length,
            ),
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
          ),
        ),
      ),
    );
  }
}
