import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:reciply/widgets/bottom_bar.dart';

class FeaturedAvocado extends StatelessWidget {

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
      bottomNavigationBar: BottomBar(selectedIndex: 0),
      backgroundColor: Color.fromRGBO(225, 213, 169, 1.00),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('images/avocado.png',
                        fit: BoxFit.cover
                    ),
                  ),

                ],
              ),

            ),
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: .5,
              minChildSize: .5,
              builder: (context, controller){
                return SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    height: 700,
                    //decoration: BoxDecoration(
                    //borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(60),
                    // topRight: Radius.circular(60),
                    // ),
                    color: Color.fromRGBO(225, 213, 169, 1.00),
                    //),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Avocado Toast - 4 Ways",
                              style: GoogleFonts.oswald(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(63, 91, 104, 1),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Color.fromRGBO(220, 130, 130, 1.00)
                                  ),
                                ),
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.grey,),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Total Time:",
                                        style: GoogleFonts.oswald(
                                          color: Color.fromRGBO(63, 91, 104, 1.00),
                                        ),
                                      ),
                                      Text(
                                        "5 minutes",
                                        style: GoogleFonts.oswald(
                                          color: Color.fromRGBO(63, 91, 104, 1.00),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.grey,),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Yields:",
                                        style: GoogleFonts.oswald(
                                          color: Color.fromRGBO(63, 91, 104, 1.00),
                                        ),
                                      ),
                                      Text(
                                        "one slice",
                                        style: GoogleFonts.oswald(
                                          color: Color.fromRGBO(63, 91, 104, 1.00),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Ingredients:",
                          style: GoogleFonts.oswald(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "- 1 slice of bread",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1/2 a ripe avocado",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- pinch of salt",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- other toppings of your choice",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Instructions:",
                          style: GoogleFonts.oswald(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "- Toast your slice of bread until golden and firm.",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "- Remove the pit from your avocado. Use a big spoon to scoop out the flesh. Put it in a bowl and mash it up with a fork until it’s as smooth as you like it. Mix in a pinch of salt (about ⅛ teaspoon) and add more to taste, if desired.",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "- Spread avocado on top of your toast. Enjoy as-is or top with any extras",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
