import 'package:flutter/material.dart';

void main() {
  runApp(Mysplashs());
}

class Mysplashs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text('MY WORLD'),),
        backgroundColor: Colors.amber,
        body: Container(
          //color: Colors.red,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/3/32/-_Flower_02_-.jpg'))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                    width: 200,
                    height: 200,
                    image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/009/228/867/small_2x/forgot-password-code-icon-illustration-for-website-mobile-app-concept-of-a-programmer-creating-application-security-code-on-computer-perfect-for-ui-ux-project-landing-page-web-brochure-vector.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Image(width: 200,height: 200,
                          image: AssetImage('images/apple.png')),
                      ),
                const Text(
                  'MY APP',
                  style: TextStyle(fontSize: 30, color: Colors.green)
                ),
                const Icon(Icons.zoom_out_sharp,size: 100,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
