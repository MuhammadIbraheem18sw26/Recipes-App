import 'package:flutter/material.dart';
import 'package:recipes_app/Components/kRecipeCardWidget.dart';

import '../model/recipe.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes APP"),
        leading: const IconButton(
            icon: Icon(Icons.arrow_back_ios_new), onPressed: null),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (context, index) {
                return buildRecipeCard(Recipe.samples[index]);
              }),
        ),
      ),
    );
  }
}
