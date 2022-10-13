import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Connectivity',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyHomePage(),
  ));
}
class MyHomePage extends StatefulWidget {
  //const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String status = '';
  late StreamSubscription subscription;

  Future<void> checkConnection() async {
    var result = await Connectivity()
        .checkConnectivity(); //check the connection status of the device

    if (result == ConnectivityResult.mobile) {
      setState(() {
        status = "Mobile network";
      });
    } else if (result == ConnectivityResult.wifi) {
      setState(() {
        status = "WiFi Network";
      });
    } else {
      setState(() {
        status = "No Network";
      });
    }
  }

  subscriptionAlert() {
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor:
              result == ConnectivityResult.none ? Colors.red : Colors.green,
          content: Text("Connection switched to ${result.name}")));
      setState(() {
        status = result.name;
      });
    });
  }

  @override
  void initState() {
    checkConnection();
    subscriptionAlert();
    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("connectivity"),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Status: ${status}'),
      ),
    );
  }
}
