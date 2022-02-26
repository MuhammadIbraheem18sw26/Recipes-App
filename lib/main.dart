// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/myhome_page.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto Slab').copyWith(
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: Colors.grey, secondary: Colors.black),
      ),
      home: MyHomePage(),
    );
  }
}
