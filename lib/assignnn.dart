import 'package:flutter/material.dart';
import 'package:sample/listassign.dart';
import 'package:sample/welcome2.dart';

void main() {
  runApp(MaterialApp(home: tabsample()));
}

class tabsample extends StatefulWidget {
  @override
  State<tabsample> createState() => _tabsampleState();
}

class _tabsampleState extends State<tabsample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('TAB BAR & BOTTOM BAR'),
            bottom: const TabBar(tabs: [
          Tab(
            icon: Icon(Icons.alarm),
          ),
          Tab(
            icon: Icon(Icons.call),
          ),
          Tab(
            icon: Icon(Icons.dangerous),
          )
        ])),
        body: TabBarView(children: [
          Center(
            child: welcomes(),
          ),
          Center(
            child: listsample(),
          ),
          Center(
            child: Text('Hello guys'),
          )
        ]),
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
            )
          ],backgroundColor: Colors.black,
      ),),
    );
  }
}