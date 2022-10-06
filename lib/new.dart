import 'package:flutter/material.dart';

void main() {
  runApp(bottomsampless());
}

class bottomsampless extends StatefulWidget {
  @override
  bottomsamplestatess createState() => bottomsamplestatess();
}

class bottomsamplestatess extends State<bottomsampless> {
  int selectedIndexx = 0;
  static const List<Widget> pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.message,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  void ontimetappedd(int index) {
    setState(() {
      selectedIndexx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bottom Navigation ')),
        body: Center(
          child: pages.elementAt(selectedIndexx),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.yellow,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'call',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.camera)),
            BottomNavigationBarItem(icon: Icon(Icons.message)),
            BottomNavigationBarItem(icon: Icon(Icons.info)),
          ],
          currentIndex: selectedIndexx,
          onTap: ontimetappedd,
          backgroundColor: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}