import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: home()));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Container(
        color: Colors.green,
        height: height / 2,
        width: width / 2,
      ),
    );
  }
}
