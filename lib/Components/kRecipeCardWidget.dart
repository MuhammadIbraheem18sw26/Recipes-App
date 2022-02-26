import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/model/recipe.dart';

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    shadowColor: Colors.blueGrey,
    elevation: 3.0,
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Image(image: AssetImage(recipe.imageUrl)),
          const SizedBox(height: 13),
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    ),
  );
}
