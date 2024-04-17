import 'package:flutter/material.dart';
import 'package:reciply/widgets/recipe_tile.dart';
import 'package:provider/provider.dart';
import 'package:reciply/models/recipe_data.dart';
import 'package:reciply/screens/new_recipe.dart';
import 'package:reciply/models/recipe.dart';

class RecipesList extends StatelessWidget {
  static List<String> titles = [];
  static List<String> descriptions = [];

  static List<String> getTitles(){
    List<String> arr = titles.toSet().toList();
    titles = arr;
    return titles;
  }

  static void addDescription(String descrip){
    descriptions.add(descrip);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RecipeData>(builder: (context, recipeData, child) {
      return SizedBox(
        height: 800,
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final currentRecipe = recipeData.recipes[index];
            String title1 = currentRecipe.name;
            return RecipeTile(
              recipeTitle: title1,
              onTapCallback: () {
                titles.add(title1);
                descriptions.add(currentRecipe.description);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewRecipe(recipe: currentRecipe)));
              },
              onLongPressCallback: (){
                recipeData.delete(currentRecipe);
              },
            );
          },
          itemCount: recipeData.recipesCount,
        ),
      );
    });
  }
}
