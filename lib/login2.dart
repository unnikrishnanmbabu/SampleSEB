import 'package:flutter/material.dart';

class loginone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('images/loginround.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: 
                TextField(
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
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(500, 10, 500, 0),
              //   child: 
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,
                        color: Color.fromARGB(255, 3, 244, 212)),
                    hintText: 'PASSWORD',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 3, 244, 212)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                            width: 3, color: Color.fromARGB(255, 3, 244, 212))),
                  ),
                ),
             // ),
              Padding(
                padding: const EdgeInsets.all(110.0),
                child: SizedBox(
                  width: 360,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 244, 212),
                      shape: StadiumBorder(),
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
