import 'package:flutter/material.dart';
import 'package:sample/passdatabtwscreen/dummydata.dart';

class Singleproductscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)?.settings.arguments;
    final product = dummyProducts.firstWhere((e) => e['id'] == productid);

    return Scaffold(
      body: Column(children: [
        Text(
          "name:${product['name']}",
          style: const TextStyle(fontSize: 30, color: Colors.purple),
        ),
        // product price
        Text(
          "Price: ${product['price'].toString()}",
          style: const TextStyle(fontSize: 20, color: Colors.red),
        ),
        // product description
        Text("Description ${product['description']}")
      ]),
    );
  }
}
