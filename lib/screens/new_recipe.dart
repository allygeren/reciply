import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reciply/widgets/bottom_bar.dart';
import 'package:reciply/models/content_entry.dart';
import 'package:reciply/models/recipe.dart';
import 'package:reciply/models/recipe_data.dart';
import 'package:reciply/widgets/recipes_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class NewRecipe extends StatefulWidget {
  static const String id = 'new_recipe';
  Recipe recipe;

  NewRecipe({required this.recipe});

  @override
  State<NewRecipe> createState() => _NewRecipeState();
}

class _NewRecipeState extends State<NewRecipe> {
  late SharedPreferences prefs;
  String recipeContent = '';
  String recipeTitle = '';
  String previousDescrip = '';
  TextEditingController _contentTextController = TextEditingController();

  Future init() async{
    prefs = await SharedPreferences.getInstance();
    String? prev = prefs.getString('previous');
    final description = await widget.recipe.description;
    RecipesList.descriptions.remove(prev);
    setState(() {
      _contentTextController.text = description;
    });
  }

  void saveData() {
      print('previous:  $previousDescrip');
      prefs.setString('previous', previousDescrip);
      Provider.of<RecipeData>(context, listen: false).updateDescription(widget.recipe.name, widget.recipe.description);
      RecipesList.addDescription(widget.recipe.description);
      previousDescrip = widget.recipe.description;
      print(RecipesList.descriptions);
  }

  void handleNoteTextChange() {
    setState(() {
      widget.recipe.description = _contentTextController.text.trim();
    });
  }

  @override
  void initState() {
    super.initState();
    init();
    _contentTextController.addListener(handleNoteTextChange);
  }


  @override
  Widget build(BuildContext context) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(widget.recipe.name,
                          style: GoogleFonts.oswald(
                            fontSize: 25,
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Color.fromRGBO(220, 130, 130, 1),
                  width: 250,
                  height: 5,
                ),
                // Text(recipeContent, style: GoogleFonts.oswald(
                //     fontSize: 18,
                //     color: Color.fromRGBO(63, 91, 104, 1)),),
                Expanded(
                  child: ContentEntry(_contentTextController),
                ),
                ElevatedButton(
                  child: Text('SAVE', style: TextStyle(color: Color.fromRGBO(63, 91, 104, 1.00))),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(220, 130, 130, 1.00)
                  ),
                  onPressed: () async {
                    saveData();
                  },
                )
              ],
            ),
          )),
      bottomNavigationBar: BottomBar(selectedIndex: 2),
    );
  }
}