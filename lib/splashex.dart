import 'package:flutter/material.dart';

void main() {
  runApp(Mysplash());
}

class Mysplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.blue,

        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/floer.jpg'))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('images/floer.jpg')
                    // NetworkImage(
                    //     'https://upload.wikimedia.org/wikipedia/commons/3/32/-_Flower_02_-.jpg')
                    ),
                const Text(
                  'kingapp',
                  style: TextStyle(fontSize: 30, color: Colors.purple),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
