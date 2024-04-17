import 'package:flutter/material.dart';
import 'package:reciply/screens/home_screen.dart';
import 'package:reciply/screens/my_recipes.dart';
import 'package:reciply/screens/search.dart';


class BottomBar extends StatefulWidget {
  final int selectedIndex;
  BottomBar({required this.selectedIndex});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  void _onTap(int index){
    if(index == 0){
      Navigator.pushNamed(context, HomeScreen.id);
    }
    if(index==1){
      Navigator.pushNamed(context, Search.id);
    }
    if(index == 2){
      Navigator.pushNamed(context, MyRecipes.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: ('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.collections_bookmark_sharp),
          label: ('My Reciplys'),
        ),
      ],
      currentIndex: widget.selectedIndex,
      onTap: _onTap,
      //fixedColor: Color.fromRGBO(220, 130, 130, 1.00),
      selectedIconTheme: IconThemeData(color: Color.fromRGBO(220, 130, 130, 1.00)),
      selectedItemColor: Color.fromRGBO(220, 130, 130, 1.00),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedIconTheme: IconThemeData(
          color: Color.fromRGBO(63, 91, 104, 1.00)
      ),
      unselectedItemColor: Color.fromRGBO(63, 91, 104, 1.00),
      iconSize: 30,
      backgroundColor: Color.fromRGBO(187, 177, 139, 1),
    );
  }
}
