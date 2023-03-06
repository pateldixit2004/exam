import 'dart:js';

import 'package:exam/home/product.dart';
import 'package:flutter/material.dart';

import 'home/Home_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> Home(),
        'pro':(context)=> Product(),
      },
    )
  );
}