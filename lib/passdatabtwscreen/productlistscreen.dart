import 'package:flutter/material.dart';
import 'package:sample/passdatabtwscreen/dummydata.dart';
import 'package:sample/main.dart';
import 'package:sample/passdatabtwscreen/singleproductscreen.dart';
import 'package:sample/passdatabtwscreen/main.dart';

class Productlistscreen extends StatelessWidget {
  void gotosingle(context, productid) {
    Navigator.of(context).pushNamed('single-product', arguments: productid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children:
        dummyProducts.map((singleProducts){
          return TextButton(onPressed: (() {
            gotosingle(context, singleProducts['id']);
          }), child:Text(singleProducts['name']));
        }).toList(),
      ),
    );
  }
}
