import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: sample()));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('curseol slider'),
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                        ))),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                        ))),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                        ))),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                        )))
              ],
              options: CarouselOptions(
                height: 180.0,
                autoPlay: true,
              ))
        ],
      ),
    );
  }
}
