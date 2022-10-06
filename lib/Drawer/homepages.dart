import 'package:flutter/material.dart';
import 'package:sample/Drawer/Otherpage.dart';

class Homepageyes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homepages();
  }
}

class Homepages extends State<Homepageyes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: Drawer(
            child: ListView(children: [
              UserAccountsDrawerHeader(
                accountName: Text('UNNI'),
                accountEmail: Text('babu@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                  ),
                  onTap: () => print('Current user'),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/animalfour.jpg'),
                        fit: BoxFit.cover)),
              ),
              ListTile(
              //  contentPadding: EdgeInsets.symmetric(horizontal: 18.0),
               visualDensity: VisualDensity(horizontal:-4, vertical: -4),
                title: Text('Home page'),
                trailing: Icon(Icons.home),
                onTap: () {
                  //Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          OtherPage('Other page'),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('About page'),
                trailing: Icon(Icons.info),
                onTap: () {
                  //Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          OtherPage('Other page'),
                    ),
                  );
                },
              ),
              Divider(
                thickness: 10.0,
              ),
              ListTile(
                title: Text('Cancel'),
                trailing: Icon(Icons.cancel),
                onTap: () => Navigator.of(context).pop(),
              )
            ]),
          )),
    );
  }
}
