import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(MaterialApp(home: Homespace()));
}
class Homespace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my home list'),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading:
                CircleAvatar(backgroundColor: Color.fromARGB(255, 3, 137, 247)),
            title: Text('search'),
            trailing: Icon(Icons.arrow_circle_right_outlined),
          ),
          const ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/3/32/-_Flower_02_-.jpg')),
            title: Text('search'),
            trailing: Icon(Icons.arrow_circle_right_outlined),
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Business!!'),
            trailing: Wrap(
              spacing: 30,
              children: [const Icon(Icons.message), const Icon(Icons.phone)],
            ),),
            ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Card'),
            trailing: Icon(Icons.card_giftcard),
            
            onTap: () {
              Fluttertoast.showToast(
              msg: "hello",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              );
            },
          )
          // Text('Item 1'),
          // Text('Item 2'),
          // Text('Item 3'),
          // Text('Item 4'),
        ],
      ),
    );
  }
}
