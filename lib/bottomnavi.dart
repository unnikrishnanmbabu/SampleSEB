import 'package:flutter/material.dart';

void main() {
  runApp(BasicBottomNavBar());
}

class BasicBottomNavBar extends StatefulWidget {
  //const BasicBottomNavBar({Key? key}) : super(key: key);
  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar> {
  int selectedIndex = 0;
  // static const List<Widget> _pages = <Widget>[
  //   Icon(
  //     Icons.call,
  //     size:10,
  //   ),
  //   Icon(
  //     Icons.camera,
  //     size: 10,
  //   ),
  //   Icon(
  //     Icons.chat,
  //     size: 10,
  //   ),
  //   Icon(
  //     Icons.chat,
  //     size: 10,
  //   ),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Demo'),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(isScrollable: true, tabs: [
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: 'HOME',
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: 'HOME',
                ),
              ]),
            ],
          ),
        ),
        body: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const TabBarView(
                children: [
                  Center(child: Icon(Icons.home)),
                  Center(child: Icon(Icons.abc_sharp))
                ],
              ),

              // _pages.elementAt(_selectedIndex),
            ]),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.yellow,
          currentIndex: selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              backgroundColor: Colors.green,
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
          ],
          // currentIndex: _selectedIndex,
          // onTap: _onItemTapped,
          // backgroundColor: Colors.lightBlueAccent,
        ),
      ),
    ));
  }
}
