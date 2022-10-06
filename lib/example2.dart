import 'package:flutter/material.dart';

class tabconsept extends StatefulWidget {
  @override
  State<tabconsept> createState() => _tabconseptState();
}

class _tabconseptState extends State<tabconsept> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 90, right: 90, bottom: 90),
      child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2.3,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hotel,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        'Hotel',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                  color: Color.fromARGB(255, 241, 7, 124)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        'Restaurant',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                  color: Colors.blue[700]),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_cafe,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        'Cafe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                  color: Colors.amber[800]),
            ),
            
          ]),
          
    );
  }
}
