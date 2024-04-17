import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentEntry extends StatelessWidget {
  final _textFieldController;
  String content = '';

  ContentEntry(this._textFieldController);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        controller: _textFieldController,
        maxLines: null,
        textCapitalization: TextCapitalization.sentences,
        decoration: null,
          style: GoogleFonts.oswald(
              fontSize: 18,
              color: Color.fromRGBO(63, 91, 104, 1)),
        onChanged: (newContent) {
          content = newContent;
        },
        ),
      );
  }
}