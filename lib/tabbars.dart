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
        appBar: AppBar(
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
      ),
    );
  }
}
