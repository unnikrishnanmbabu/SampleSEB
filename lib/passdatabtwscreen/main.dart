import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/passdatabtwscreen/productlistscreen.dart';
import 'package:sample/passdatabtwscreen/singleproductscreen.dart';

void main() {
  runApp(Myapps());
}

class Myapps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Productlistscreen(),
      routes: {
        "single-product":(context) => Singleproductscreen(),
      },
    );
  }
}
