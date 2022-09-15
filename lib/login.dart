import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Text("Login",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontStyle: FontStyle.normal)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Login to your Account'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(500, 100, 820, 0),
              child: Text('Email'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(500,0,500,0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(500, 0, 800, 0),
              child: Text('Password'),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(500, 0, 500, 0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))))),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                width: 190,
                height: 50,
                child: ElevatedButton(onPressed: (() {
                  
                }),style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),backgroundColor: Colors.blue,foregroundColor: Colors.white),
                child:Text('Login'),),
              ),
            ),
           Image(
              width: 200,height:200,
              image:NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/32/-_Flower_02_-.jpg')),
            
          ]
        ),
      ),
    );
  }
}
