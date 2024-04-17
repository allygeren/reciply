import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reciply/models/recipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecipeData extends ChangeNotifier {
  List<Recipe> recipes = [
  ];


  int get recipesCount {
    return recipes.length;
  }

  void addRecipe(String title, String descrip) async{
    var recipe = Recipe(name: title, description: descrip);
    recipes.add(recipe);
    notifyListeners();
  }

  void clear() async{
    recipes = [];
    notifyListeners();
  }

  bool contains(String title){
    bool con = false;
    recipes.forEach((Recipe r) {
      if(r.name == title){
        con = true;
      }
    });
    return con;
  }

  void updateDescription(String title, String newDescrip) async{
    print('updating');
    recipes.forEach((Recipe r) {
      if(r.name == title){
        r.description = newDescrip;
      }
    });
    notifyListeners();
    print(toString());
  }

  void delete(Recipe recipe){
    recipes.remove(recipe);
    notifyListeners();
  }

  String toString(){
    String rep = '';
    recipes.forEach((Recipe recipe) {
      String title = recipe.name;
      String descrip = recipe.description;
      rep = '$rep' + '$title' + '\t $descrip' + '\n';
    });
    return rep;
  }
}