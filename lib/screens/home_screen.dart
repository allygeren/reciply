import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reciply/screens/featured_recipes/featured_avocado.dart';
import 'package:reciply/screens/featured_recipes/featured_cake.dart';
import 'package:reciply/screens/featured_recipes/featured_gigi.dart';
import 'package:reciply/widgets/bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text("Our Top Picks:",
                            style: GoogleFonts.oswald(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(63, 91, 104, 1)
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
                  Container(
                    child: Text("Avocado Toast - 4 Ways",
                      style: GoogleFonts.oswald(
                          fontSize: 18,
                          color: Color.fromRGBO(63, 91, 104, 1)
                      ),
                    ),
                  ),
                  // top picks
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FeaturedAvocado()
                      ));
                    },
                    child: Container(

                      child: new Padding(
                        padding: EdgeInsets.only(left: 97),
                        child: Image.asset('images/avocado.png',
                          alignment: Alignment.center,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Avocado toast is perfect for breakfast, a snack, or a light meal. Creamy, crisp, & satisfying all in one!",
                      style: GoogleFonts.ebGaramond(
                        color: Color.fromRGBO(63, 91, 104, 1),

                      ),
                    ),
                  ),
                  Container(
                    child: Text("Gigi Hadid Pasta",
                      style: GoogleFonts.oswald(
                          fontSize: 18,
                          color: Color.fromRGBO(63, 91, 104, 1)
                      ),
                    ),
                  ),
                  // top picks
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FeaturedGigi()
                      ));
                    },
                    child: Container(

                      child: new Padding(
                        padding: EdgeInsets.only(left: 97),
                        child: Image.asset('images/gigi.png',
                          alignment: Alignment.center,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("The imfamous creamy pasta recipe from celebrity star Gigi Hadid!",
                      style: GoogleFonts.ebGaramond(
                        color: Color.fromRGBO(63, 91, 104, 1),
                      ),
                    ),
                  ),
                  Container(
                    child: Text("Birthday Cake in a Mug",
                      style: GoogleFonts.oswald(
                          fontSize: 18,
                          color: Color.fromRGBO(63, 91, 104, 1)
                      ),
                    ),
                  ),
                  // top picks
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FeaturedCake()
                      ));
                    },
                    child: Container(

                      child: new Padding(
                        padding: EdgeInsets.only(left: 97),
                        child: Image.asset('images/cake.png',
                          alignment: Alignment.center,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //
                  //   child: new Padding(
                  //     padding: EdgeInsets.only(left: 97),
                  //     child: Image.asset('images/cake.jpg',
                  //       alignment: Alignment.center,
                  //       height: 300,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Mug Cakes are the perfect dessert if you have ever wanted a slice of cake for one. They are the perfect easy one serving dessert to satisfy a sweet tooth!",
                      style: GoogleFonts.ebGaramond(
                        color: Color.fromRGBO(63, 91, 104, 1),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
