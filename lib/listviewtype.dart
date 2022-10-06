import 'package:flutter/material.dart';
import 'package:sample/register2.dart';
import 'package:fluttertoast/fluttertoast.dart';

// import 'package:sample/register2.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan), home: listsample()));
}

class listsample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my home list'),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: 20,
            child: ListTile(
              leading: Icon(Icons.abc_sharp),
              title: Text('Abhijith S'),
              trailing: SizedBox(
                width: 200,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: Icon(Icons.call),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Icon(Icons.messenger),
                    )
                  ],
                ),
              ),
              onTap: () {
                Fluttertoast.showToast(
                  msg: "Hello Guys...................",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 5,
                  //webPosition:"center"
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),fit: BoxFit.cover)),
            child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)) ,color: Colors.yellow,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                ),
                title: Text('unnikrishnan'),
                trailing: Wrap(spacing: 20, children: [
                  Icon(Icons.add_business),
                  Icon(Icons.ac_unit_rounded),
                ]),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.grey,
                    content: Icon(
                      Icons.access_time_outlined,
                    ),
                  ));
                },
              ),
            ),
          )

          // Text('Text1'),
          // Text('Text2'),
          // Text('Text3'),
          // Text('Text4'),
          // Text('Text5'),
        ],
      ),
    );
  }
}
