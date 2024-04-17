import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reciply/models/recipe_data.dart';

class AddRecipe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(225, 213, 169, 1.00),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Recipe Title",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Color.fromRGBO(63, 91, 104, 1.00), fontWeight: FontWeight.bold),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(63, 91, 104, 1.00),),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(63, 91, 104, 1.00),),
                  ),
                ),
                onChanged: (newValue) {
                  newTitle = newValue;
                },
                style: TextStyle(fontSize: 20.0, color: Color.fromRGBO(63, 91, 104, 1.00)),
                cursorColor: Color.fromRGBO(220, 130, 130, 1.00),
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(220, 130, 130, 1.00))),
                  child: Text(
                    'ADD',
                    style: TextStyle(fontSize: 20.0, color: Color.fromRGBO(63, 91, 104, 1.00)),
                  ),
                  onPressed: () {
                    Provider.of<RecipeData>(context, listen: false).addRecipe(newTitle, '');
                    Navigator.pop(context);
                  }),
            ],
          )),
    );
  }
}
