import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:reciply/widgets/bottom_bar.dart';

class FeaturedGigi extends StatelessWidget {

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
                    child: Image.asset('images/gigi.png',
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
                            Text("Gigi Hadid Pasta",
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
                                        "12 minutes",
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
                                        "six servings",
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
                          "- 1 lb rigatoni pasta",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1/2 cup olive oil",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1 onion cubes",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 3-4 garlic cloves minced",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1/2 cup tomato paste",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1 cup heavy cream or half and half",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 2 teaspoons crushed red pepper",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1/2 a cup pasta water",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 2 tablespoons butter",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1/2 cup parmesan cheese",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- salt and pepper to taste",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- basil for garnish",
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
                          "- Boil your pasta according to the package instructions. In a large skillet on medium high heat add the olive oil and cubed onions. Saute' the onions for a few minutes until translucent then add in the minced garlic and saute' for another 1-2 minutes.",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "- Add in the tomato paste, heavy cream, butter, pasta water, crushed red pepper (optional) parmesan cheese, salt and pepper into the skillet and mix until combined.",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "- Add in your drained pasta and mix in with the sauce. Garnish with fresh basil and enjoy!",
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
