import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/model/recipe.dart';
import 'package:recipes_app/Components/kRecipeCardWidget.dart';

class RecipeDetail extends StatefulWidget {
  static String recipeDetail = '/recipe_detail/';

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _slideValue = 1;
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(data['label']),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(data['imgUrl']),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              data['label'],
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: data['ingredients'].length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = data['ingredients'][index];
                  // 9
                  // TODO: Add ingredient.quantity
                  return Text(
                      '${ingredient.quantity * _slideValue} ${ingredient.measure} ${ingredient.name}');
                },
              ),
            ),

            Slider(
                min: 1,
                max: 10,
                divisions: 9,
                label: '${_slideValue * data['servings']} Servings',
                inactiveColor: Colors.black,
                activeColor: Colors.green,
                value: _slideValue.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _slideValue = value.round();
                  });
                })
          ],
        ),
      ),
    );
  }
}
