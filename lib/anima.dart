import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: samples(),));
}

class samples extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => samplesstate();
}

class samplesstate extends State with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isAnimated = false;
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  void changeIcon() {
    setState(() {
      isAnimated = !isAnimated;
      isAnimated
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            changeIcon();
          },
          child: AnimatedIcon(
            size: 200,
            color: Color.fromARGB(255, 3, 20, 4),
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
          )
        ),
      ),
    );
  }
}
