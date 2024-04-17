import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeTile extends StatelessWidget {
  final String recipeTitle;
  final void Function()? onTapCallback;
  final void Function()? onLongPressCallback;

  RecipeTile(
      {required this.recipeTitle,
        required this.onTapCallback,
        required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color.fromRGBO(187, 177, 139, 1.00),
      onTap: onTapCallback,
      onLongPress: onLongPressCallback,
      title: Text(recipeTitle,
      style: GoogleFonts.oswald(
          fontSize: 20,
          color: Color.fromRGBO(63, 91, 104, 1))),
    );
  }
}
