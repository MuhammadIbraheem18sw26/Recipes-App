// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipes_app/screens/recipe_details.dart';
import 'screens/myhome_page.dart';
import 'package:get/get.dart';
import 'model/recipe.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Roboto Slab').copyWith(
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: Colors.grey, secondary: Colors.black),
      ),
      initialRoute: MyHomePage.homepage,
      getPages: [
        GetPage(name: MyHomePage.homepage, page: () => MyHomePage()),
        GetPage(name: RecipeDetail.recipeDetail, page: () => RecipeDetail()),
      ],
    );
  }
}
