import 'package:flutter/material.dart';

void main() {
  runApp(registration());
}

class registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(primarySwatch: Colors.orange),
        home: Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: Center(
      child:Column(children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text('Registration Form',style: TextStyle(fontSize: 30,color: Colors.black),),
       ),
       Padding(
         padding: const EdgeInsets.fromLTRB(0,0, 1310, 0),
         child:Text('Name')
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
              decoration: InputDecoration(
                hintText:'Enter your name'),
           ),
       ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(decoration: InputDecoration(prefixIcon
            :Icon(Icons.contacts),
            label: Text('Enter your email'),
            border: OutlineInputBorder()),),
         ),
         Padding(
         padding: const EdgeInsets.fromLTRB(0,0, 1310, 0),
         child:Text('Email')
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                hintText:'Email',border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(30)) )),
           ),
       ),
         Padding(
         padding: const EdgeInsets.fromLTRB(0,5, 1285, 0),
         child:Text('Password')
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(decoration: InputDecoration(prefixIcon
            :Icon(Icons.shield),
            border: OutlineInputBorder()),),
         ),
      ],)
    )
    ));
  }
}
