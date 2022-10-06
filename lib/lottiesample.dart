import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(List<String> args) {
  runApp(lottiesample());
}

class lottiesample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:ListView(
            children: [
              Lottie.asset('images/login.json',width: 100,height: 100),
              Lottie.network('https://assets8.lottiefiles.com/packages/lf20_PmGV4skHBv.json',width: 500,height: 500,),
              Lottie.network('https://assets8.lottiefiles.com/packages/lf20_PmGV4skHBv.json',width: 500,height: 500),
              
              ]
          ),
        
      ),
    );
  }
}
