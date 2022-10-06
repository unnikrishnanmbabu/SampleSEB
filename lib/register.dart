import 'package:flutter/material.dart';

class Myregister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(
              'Sigin up',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Create an account,It's free"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(225, 40, 520, 0),
              child: Text('Username'),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(500, 0, 500, 20),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4)))))),
            Padding(
              padding: EdgeInsets.fromLTRB(200, 0, 520, 0),
              child: Text('Email'),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(500, 0, 500, 20),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4)))))),
            Padding(
              padding: EdgeInsets.fromLTRB(220, 0, 520, 0),
              child: Text('Password'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(500, 0, 500, 20),
              child: TextField(
                obscuringCharacter: '*',
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(275, 0, 520, 0),
              child: Text('Confirm Password'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(500, 0, 500, 20),
              child: TextField(
                obscuringCharacter: '*',
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 260,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  child: Text('Sign up'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text("Already have an account?Login")),
            ),
          ],
        ),
      ),
    );
  }
}
