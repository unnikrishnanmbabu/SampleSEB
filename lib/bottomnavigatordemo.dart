
import 'package:flutter/material.dart';
import 'package:sample/assignmentone.dart';
import 'package:sample/firstui.dart';
import 'package:sample/gridd.dart';
import 'package:sample/listassign.dart';
import 'package:sample/listcustoms.dart';
import 'package:sample/mediaquarys.dart';

void main() {
  runApp(sample());
}

class sample extends StatefulWidget {
  State<StatefulWidget> createState() => samplestate();
}

class samplestate extends State {
  int selectedind = 0;
  List<Widget> nopages = <Widget>[
    // Icon(
    //   Icons.call,
    //   size: 150,
    // ),
    // Icon(
    //   Icons.camera,
    //   size: 150,
    // ),
    // Icon(
    //   Icons.message,
    //   size: 150,
    // ),
    // Icon(
    //   Icons.chat,
    //   size: 150,
    // ),
    // Icon(
    //   Icons.chat,
    //   size: 150,
    // ),
    // Icon(
    //   Icons.chat,
    //   size: 150,
    // ),
    firstsample(),
    listcustoms(),
    listsample(),
    samplesep(),
    samplemay(),
    home()
  ];
  void onItemtapped(int index) {
    setState(() {
      selectedind = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('bootomnavigationbar'),),
        body: Center(
          child: nopages.elementAt(selectedind),
        ),
        bottomNavigationBar: BottomNavigationBar(
         type:BottomNavigationBarType.fixed,iconSize: 40,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
          ],
          currentIndex:selectedind,
          onTap: onItemtapped,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
