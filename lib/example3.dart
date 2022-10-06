import 'package:flutter/material.dart';

class imagesample extends StatefulWidget {
  @override
  State<imagesample> createState() => _imagesampleState();
}

class _imagesampleState extends State<imagesample> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/hotel.jpg'),
    );
  }
}
