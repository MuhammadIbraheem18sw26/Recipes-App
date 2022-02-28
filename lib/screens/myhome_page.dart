import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/Components/kRecipeCardWidget.dart';

import '../model/recipe.dart';
import 'recipe_details.dart';

class MyHomePage extends StatefulWidget {
  static String homepage = '/';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Recipe> recipe = Recipe.samples;
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
              itemCount: recipe.length,
              itemBuilder: (context, index) {
                print(recipe[index].label);
                return GestureDetector(
                    onTap: () {
                      Get.toNamed(RecipeDetail.recipeDetail, arguments: {
                        'label': recipe[index].label,
                        'imgUrl': recipe[index].imageUrl,
                        'ingredients': recipe[index].ingredients,
                        'servings': recipe[index].servings,
                      });
                    },
                    child: buildRecipeCard(recipe[index]));
              }),
        ),
      ),
    );
  }
}
