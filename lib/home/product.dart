import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    dynamic s= ModalRoute.of(context)!.settings.arguments ;
    return Scaffold(
      appBar: AppBar(
        title: Text("hyy"),
      ),
      body: Text("$s"),
    );
  }
}
