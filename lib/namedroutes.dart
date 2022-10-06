import 'package:flutter/material.dart';
import 'package:sample/gridd.dart';
import 'package:sample/listcustoms.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepagess(),
      routes: {
        'Table': (BuildContext ctx) => listcustoms(),
        'Register': (BuildContext ct) => samplemay(),
      },
    );
  }
}

class Homepagess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
        child: Row(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Table');
                },
                child: Text('table')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Register');
                },
                child: Text('register'))
          ],
        ),
      ),
    );
  }
}

// class settingspage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings'),
//       ),
//       body: Center(
        
//         child: Text("Route name: ${ModalRoute.of(context)?.settings.name}"),
//       ),
//     );
//   }
// }
