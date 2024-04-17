import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reciply/screens/add_recipe.dart';
import 'package:reciply/widgets/bottom_bar.dart';
import 'package:reciply/widgets/recipes_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reciply/models/recipe_data.dart';
import 'package:reciply/models/recipe.dart';
import 'package:provider/provider.dart';


class MyRecipes extends StatefulWidget {
  static const String id = 'my_recipes';

  @override
  State<MyRecipes> createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  late SharedPreferences prefs;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async{
    //prefs.remove('titles');
    //prefs.remove('descriptions');
    prefs = await SharedPreferences.getInstance();
    final List<String>? items = prefs.getStringList('titles');
    //print(prefs.getStringList('descriptions'));
    final List<String>? descrips = prefs.getStringList('descriptions');
    print('descrips: $descrips');
    //List<String> descrips = ['hi', 'hello'];
    setState(() {
      if (items != null) {
        while (items.length != 0) {
          if(!RecipesList.titles.contains(items[0])) {
            RecipesList.titles.add(items[0]);
          }
          items.removeAt(0);
        }
      }
      RecipesList.descriptions.clear();
      if (descrips != null) {
        while (descrips.length != 0) {
          if(!RecipesList.descriptions.contains(descrips[0])) {
            RecipesList.descriptions.add(descrips[0]);
            print(descrips[0]);
          }
          descrips.removeAt(0);
        }
      }
      print(RecipesList.descriptions);
      List<String> recipes = RecipesList.titles;
      List<String> descriptions = RecipesList.descriptions;

      for(int i = 0; i<recipes.length; i++){
        if(!(RecipeData().contains(recipes[i]))) {
          Provider.of<RecipeData>(context, listen: false).addRecipe(recipes[i], '');
          Provider.of<RecipeData>(context, listen: false).updateDescription(recipes[i], descriptions[i]);
        }
      };
    });
    print(RecipesList.titles);
    print(RecipeData());
  }

  saveData() async{
    prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('titles', RecipesList.titles);
    await prefs.setStringList('descriptions', RecipesList.descriptions);
    print(prefs.getStringList('titles'));
    print(prefs.getStringList('descriptions'));
    print(RecipesList.titles);
    //rList
  }

  deleteData() async{
    setState(() {
      prefs.remove('titles');
      prefs.remove('descriptions');
      RecipesList.titles.clear();
      RecipesList.descriptions.clear();
      Provider.of<RecipeData>(context, listen: false).clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    //loadData();
    saveData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Reciply',
            style: GoogleFonts.oswald(
                fontSize: 30,
                color: Color.fromRGBO(63, 91, 104, 1))
        ),
        backgroundColor: Color.fromRGBO(187, 177, 139, 1),
      ),
      backgroundColor: Color.fromRGBO(225, 213, 169, 1.00),
      body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text("My Reciplys:",
                            style: GoogleFonts.oswald(
                              fontSize: 25,
                              color: Color.fromRGBO(63, 91, 104, 1.00),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        ElevatedButton(
                          child: Text('CLEAR', style: TextStyle(color: Color.fromRGBO(63, 91, 104, 1.00))),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(220, 130, 130, 1.00)
                          ),
                          onPressed: () async {
                            deleteData();
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Color.fromRGBO(220, 130, 130, 1),
                    width: 250,
                    height: 5,
                  ),
                  RecipesList(),
                ],
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(220, 130, 130, 1.00),
        child: Icon(Icons.add, color:  Color.fromRGBO(63, 91, 104, 1.00)),
        onPressed: () {
          saveData();
          showModalBottomSheet(
            context: context,
            builder: (context) => AddRecipe(),
          );
        },
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 2),
    );
  }
}