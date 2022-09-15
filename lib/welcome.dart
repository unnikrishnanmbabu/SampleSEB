import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';
import 'package:sample/login.dart';

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
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic)),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: const Image(
                width: 300,
                height: 300,
                image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/009/228/867/small_2x/forgot-password-code-icon-illustration-for-website-mobile-app-concept-of-a-programmer-creating-application-security-code-on-computer-perfect-for-ui-ux-project-landing-page-web-brochure-vector.jpg')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black),
              child: const Text(
                  '                             Login                               '),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white),
              child: const Text(
                  '                             Register                           ')),
        ]),
      ),
    ));
  }
}
