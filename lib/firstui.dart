import 'package:flutter/material.dart';

void main() {
  runApp(firstsample());
}

class firstsample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:PreferredSize(preferredSize: Size.fromHeight(200),child: 
           AppBar(
            title:TextField(decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(),
            labelText: 'Search')




            //Container(
            //   width: double.infinity,
            //   height: 100,
            //   child: Center(
            //     child: Padding(
            //       padding: const EdgeInsets.all(30.0),
            //       child: Text('what is your name'),
            //     ),
                
              ),
            )
           ),
           
           
           
          drawer: Theme(
            data: Theme.of(context).copyWith(),
            child: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                      accountName: Text('UNNI'),
                      accountEmail: Text('unniedayaranz004@gmail.com'),
                      currentAccountPicture: Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50'),)
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Text('unniiiiiiiiiii')
            ],
          ),
          ),
    );
  }
}
