import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(tableones());
}

class tableones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Table',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: DataTable(
                  dataRowHeight: 20,
                  columnSpacing: 25,
                  headingRowHeight: 20,
                  columns: <DataColumn>[
                    DataColumn(label: Text('Course')),
                    DataColumn(label: Text('College')),
                    DataColumn(label: Text('Branch')),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      DataCell(Text('B.tech')),
                      DataCell(Text('MMMUT')),
                      DataCell(Text('CSE'))
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text('B.tech')),
                      DataCell(Text('HBTU')),
                      DataCell(Text('IT'))
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text('B.tech')),
                      DataCell(Text('IET')),
                      DataCell(Text('ME'))
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
