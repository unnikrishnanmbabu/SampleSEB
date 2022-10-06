import 'package:flutter/material.dart';
import 'package:sample/login2.dart';
import 'package:sample/register2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: welcomes(),
  ));
}

class welcomes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => welcomesstate();
}

class welcomesstate extends State<welcomes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 244, 212),
        body: Container(
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('images/gobackground.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginone()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.lightBlueAccent),
                    child: const Text('LOGIN',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => registerone()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(
                              side: BorderSide(width:3,color: Colors.white)),
                          backgroundColor: Color.fromARGB(255, 3, 244, 212),
                          foregroundColor: Colors.white),
                      child: const Text('REGISTER',
                          style: TextStyle(
                            fontSize: 20,
                          ))),
                ),
              )
            ]),
          ),
        ));
  }
}
