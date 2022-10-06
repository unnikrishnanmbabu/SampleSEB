import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: loginsample()));
}

class loginsample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loginpage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Login page',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text('Username'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 15.0, right: 8.0),
            child: SizedBox(
              width: 1500,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: '@gmail.com'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 10.0),
            child: Text('Password'),
          ),
          const SizedBox(
            width: 1520,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Enter password'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 200,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.pink, Colors.green])),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent),
                    child: const Text('Login'),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  // width: 200,
                  // height: 50,
                  child: MaterialButton(
                minWidth: 207,
                height: 60,
                onPressed: () {},
                color: Colors.blue,
                child: const Text("Sign up"),
              )),
            ),
          ),
          Row(
            children: [
              
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Password'),
              ),
              const SizedBox(
                width: 1280,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: 'password'),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: const Text(
                    'Not a Register? Sign up',
                    style: TextStyle(fontSize: 15, color: Colors.black),

                  )),
            ),
          ),
        ],
      ),
    );
  }
}
