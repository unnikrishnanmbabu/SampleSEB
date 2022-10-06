import 'package:flutter/material.dart';

void main() {
  runApp(Firstscreen());
}

class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FLUTTER')
        ),
        body:const Center(
          child: Text('Welcome to FLUTTER',style: TextStyle(fontSize: 30,color: Colors.green))
        ),
      ),
    );
  }
}
