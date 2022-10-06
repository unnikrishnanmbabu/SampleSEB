import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: listsample()));
}

class listsample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
            title: Text('Abhijith S'),
            trailing: Wrap(
                spacing: 40, children: [Icon(Icons.message), Icon(Icons.call)]),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("images/animalfour.jpg")),
            title: Text('Arun'),
            trailing: Wrap(
              spacing: 40,
              children: [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("images/animalthree.jpg")),
            title: Text('Aswin'),
            trailing: Wrap(
              spacing: 40,
              children: [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("images/animaltwo.jpg")),
            title: Text('Aushaq'),
            trailing: Wrap(
              spacing: 40,
              children: [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("images/animalone.jpg")),
            title: Text('Bibin'),
            trailing: Wrap(
              spacing: 40,
              children: [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("images/animalfive.jpg")),
            title: Text('Cyriac'),
            trailing: Wrap(
              spacing: 40,
              children: [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text('Dravid'),
            trailing: Wrap(
              spacing: 40,
              children: [Icon(Icons.message), Icon(Icons.call)],
            ),
          ),
        ],
      ),
    );
  }
}
