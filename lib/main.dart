import 'package:flutter/material.dart';
import 'package:reciply/screens/home_screen.dart';
import 'package:reciply/screens/my_recipes.dart';
import 'package:provider/provider.dart';
import 'package:reciply/models/recipe_data.dart';
import 'package:reciply/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecipeData>(
      create: (context) => RecipeData(),
      child: MaterialApp(
          routes: {
            HomeScreen.id: (context) => HomeScreen(),
            MyRecipes.id: (context) => MyRecipes(),
            Search.id: (context) => Search(),
          },
          home: Scaffold(
            body: HomeScreen(),
          )
      ),
    );
  }
}
