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
        backgroundColor: Colors.black12,
        title: Text("Product Detali"),
      ),
      body: Center(child: Text("${s[0]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
    );
  }
}
