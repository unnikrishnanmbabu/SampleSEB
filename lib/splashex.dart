import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample/loginex.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Mysplash()));
}

class Mysplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Mysplashstate();
}

class Mysplashstate extends State<Mysplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  width: 200, height: 200, image: AssetImage('images/floer.jpg')
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
    );
  }
}


// class Mysplash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         //backgroundColor: Colors.blue,

//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: const BoxDecoration(
//               image: DecorationImage(
//                   fit: BoxFit.fill, image: AssetImage('images/floer.jpg'))),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Image(
//                     width: 200,
//                     height: 200,
//                     image: AssetImage('images/floer.jpg')
//                     // NetworkImage(
//                     //     'https://upload.wikimedia.org/wikipedia/commons/3/32/-_Flower_02_-.jpg')
//                     ),
//                 const Text(
//                   'kingapp',
//                   style: TextStyle(fontSize: 30, color: Colors.purple),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
