
import 'package:flutter/material.dart';

void main() {
  runApp(bottomsampleone());
}

class bottomsample extends StatelessWidget {
  void shows(BuildContext ctx) {
    showModalBottomSheet(elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
              padding:
                  EdgeInsets.only(left: 15,right: 15,top: 15,bottom: MediaQuery.of(ctx).viewInsets.bottom),
              child: Container(
                height: 200,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Age'),
                    // decoration: InputDecoration(labelText: 'age',
                    //   border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30),),
                    //         borderSide: BorderSide(
                    //             width: 3,
                    //             color: Color.fromARGB(255, 243, 245, 245))))
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {}, child: const Text('login')),
                  )
                ]),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.local_airport),onPressed: ()=>shows(context),),
      
    );
  }
}

class bottomsampleone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bottomsample(),
    );
  }
}
