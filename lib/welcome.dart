import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Mywelcome(),
  ));
}

class Mywelcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Mywelcomestate();
}

class Mywelcomestate extends State<Mywelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(children: [
          const Text('Welcome',
              style: TextStyle(fontSize: 50, color: Colors.blue)),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: const Image(
                width: 300,
                height: 300,
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-135.jpg?w=2000')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.green,
                  foregroundColor: Color.fromARGB(255, 255, 255, 255)),
              child: const Text(
                  '                             Login                               '),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              child: const Text(
                  '                             Register                           ')),
        ]),
      ),
    ));
  }
}
