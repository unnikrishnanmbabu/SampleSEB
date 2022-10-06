import 'package:flutter/material.dart';
import 'package:sample/examplee.dart';

void main() {
  runApp(example());
}

class example extends StatefulWidget {
  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 224, 224),
        appBar: PreferredSize(
          child: MyHomePage(),
          preferredSize: const Size.fromHeight(200.0),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(),
          child: Drawer(
            child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/animalfour.jpg'))),
                    accountName: Text('UNNI'),
                    accountEmail: Text('UNNIEDAYARANZ004@GMAIL.COM'),
                    currentAccountPicture: (CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1547721064-da6cfb341d50'),
                    ))),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 90, right: 90, bottom: 60),
                child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    childAspectRatio: 3 / 2.3,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.hotel,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                const Text(
                                  'Hotel',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                            color: const Color.fromARGB(255, 241, 7, 124)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.restaurant,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                const Text(
                                  'Restaurant',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                            color: Colors.blue[700]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.local_cafe,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                const Text(
                                  'Cafe',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                            color: Colors.amber[800]),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 930,
                    width: 1200,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            const Image(
                                image: AssetImage(
                              'images/hotel.jpg',
                            )),
                            Positioned(
                                bottom: 40,
                                right: 20,
                                child: Container(
                                    width: 100,
                                    height: 70,
                                    color: Colors.white,
                                    child: const Center(
                                        child: Text(
                                      '\$40',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 30),
                                    )))),
                            Positioned(
                                top: 20,
                                right: 20,
                                child: Container(
                                    child: const Center(
                                        child: Icon(
                                  Icons.star_outline,
                                  size: 60,
                                  color: Colors.white,
                                ))))
                          ]),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 15.0),
                            child: Text(
                              'Awesome room near Bouddha',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text('Bouddha,Kathmandu'),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, left: 15.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star_rate,
                                  color: Colors.green,
                                ),
                                const Icon(
                                  Icons.star_rate,
                                  color: Colors.green,
                                ),
                                const Icon(
                                  Icons.star_rate,
                                  color: Colors.green,
                                ),
                                const Icon(
                                  Icons.star_rate,
                                  color: Colors.green,
                                ),
                                const Icon(
                                  Icons.star_rate,
                                  color: Colors.green,
                                ),
                                const Text(
                                  ' (220 reviews)',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
