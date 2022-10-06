import 'package:flutter/material.dart';

class registerone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                width: 200,
                height: 200,
                image: AssetImage('images/registerround.png')),
            Padding(
              padding: const EdgeInsets.fromLTRB(500, 60, 500, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person,
                        color: Color.fromARGB(255, 3, 244, 212)),
                    hintText: 'DISPLAY NAME',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 3, 244, 212)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Color.fromARGB(255, 3, 244, 212)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(500, 10, 500, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 3, 244, 212)),
                    hintText: 'EMAIL',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 3, 244, 212)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Color.fromARGB(255, 3, 244, 212)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(500, 10, 500, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,
                        color: Color.fromARGB(255, 3, 244, 212)),
                    hintText: 'PASSWORD',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 3, 244, 212)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                            width: 3,
                            color: Color.fromARGB(255, 3, 244, 212)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(90.0),
              child: SizedBox(
                width: 370,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 3, 244, 212),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'CREATE ACCOUNT',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
