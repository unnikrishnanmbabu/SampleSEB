import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(List<String> args) {
  runApp(sample());
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return Padding(
              padding: EdgeInsets.all(10.0),
               child: Column(children: [
                Image.network('https://picsum.photos/250?image=2'),
                Text('Lenovo ideapad 310 SDK')
               ],
              
               ),

              // child: Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: NetworkImage(
              //           'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),fit:BoxFit.cover,
              //     ),borderRadius: BorderRadius.all(Radius.circular(10.0),),
              //   ),
              // ),
            );
          }),
        ),
      ),
    );
  }
}
