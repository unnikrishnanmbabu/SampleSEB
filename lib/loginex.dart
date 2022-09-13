
import 'package:flutter/material.dart';
import 'package:sample/homepage.dart';

// void main() {
//   runApp(Loginpage());
// }

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
          title: const Text('LOGIN PAGE'),),
          body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text('Login page',style: TextStyle(fontSize: 30,color: Colors.red),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(label: Text('username'),
                hintText: 'enter username',
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(30)),)),),
              ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: TextField(
                obscuringCharacter:'*',
                obscureText: true,
                decoration: InputDecoration(label: Text('password'),
                hintText: 'enter password',
                border: OutlineInputBorder(
                borderRadius:BorderRadius.all(Radius.circular(30)),)),),
             ),
            MaterialButton(onPressed: (){},color: Colors.orange,child: Text('login'),),
            SizedBox(
              height: 30,
              width: 100,
              child: ElevatedButton(onPressed:(){
                Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
              }, child: Text('GO BACK')
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:361.0),
              child: TextButton(onPressed: (){}, child:Text('Not a user? Register More!!!')),
            )
            ]
            ),         
      ),
    );
  }
}


