import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Languages'),
                DropDownMultiSelect(
                  onChanged: (List<String> x) {
                    setState(() {
                      selected = x;
                    });
                  },
                  options: ['English', 'Malayalam', 'Hindi', 'Spanish'],
                  selectedValues: selected,
                  whenEmpty: 'Select Something',
                ),
              
              ],
            ),
          ),
        ));
  }
}
