import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:reciply/widgets/bottom_bar.dart';

class FeaturedCake extends StatelessWidget {

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
                    child: Image.asset('images/cake.png',
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
                            Text("Birthday Cake in a Mug",
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
                                        "one serving",
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
                          "- ¼ cup +1 ½ teaspoons all-purpose flour",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 2 tablespoons sugar",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1/4 teaspoon baking powder",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- dash of salt",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 2 tablespoons of melted butter",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 3 tablespoons milk",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1/2 teaspoon vanilla extract",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        Text(
                          "- 1 teaspoon sprinkles",
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
                          "- Add flour, sugar, baking powder, and salt to a mug and stir together.",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "- Stir in milk, melted butter, and vanilla extract until smooth, being sure to scrape the bottom of the mug. Stir in sprinkles.",
                          style: GoogleFonts.ebGaramond(
                            color: Color.fromRGBO(63, 91, 104, 1.00),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "- Cook in microwave for 70-90 seconds (until cake is just set, but still barely shiny on top). Allow to rest in microwave for 1 minute before consuming.",
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
