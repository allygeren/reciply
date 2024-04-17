import 'dart:convert';
//import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reciply/models/search_model.dart';
import 'package:reciply/widgets/bottom_bar.dart';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Search extends StatefulWidget {
  static const String id = "search";
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Model> list= <Model>[];
  String? text;
  var recipeData;
  final url = "https://api.edamam.com/search?q=chicken&app_id=c22d737d&app_key=f6926195d86622872635e72c4b694f81&from=0&to=100&calories=591-722&health=alcohol-free";

  getApiData(String url1)async{
    var response = await http.get(Uri.parse(url1));
    Map json= jsonDecode(response.body);
    json['hits'].forEach((e){
      Model model = Model(
        url: e['recipe']['url'],
        image: e['recipe']['image'],
        label: e['recipe']['label'],
      );
      setState(() {
        list.add(model);
      });
    });
  }

  _launchURL(String url1) async {
    if (await canLaunch(url1)) {
      await launch(
        url1,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url1';
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
      bottomNavigationBar: BottomBar(selectedIndex: 1),
      backgroundColor: Color.fromRGBO(225, 213, 169, 1.00),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (v){
                  text = v;
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        getApiData("https://api.edamam.com/search?q=$text&app_id=c22d737d&app_key=f6926195d86622872635e72c4b694f81&from=0&to=50&calories=591-722&health=alcohol-free");
                      });
                    },
                      icon: Icon(Icons.search),
                    ),
                    hintText: "Search For Recipes",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    fillColor: Color.fromRGBO(220, 130, 130, .4),
                    filled: true
                ),
              ),
              SizedBox(height: 15,),
              GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  primary: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, i){
                    final x = list[i];
                    return InkWell(
                      onTap: (){
                        _launchURL(x.url);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.fill,
                              image: NetworkImage(x.image.toString())
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              height: 50,
                              color: Color.fromRGBO(220, 130, 130, .5),
                              child: Text(x.label.toString()
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class WebPage extends StatelessWidget {
//   final url;
//   WebPage({this.url});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: WebView(
//           initialUrl: url,
//         ),
//       ),
//     );
//   }
// }
// class SearchPage extends StatefulWidget {
//
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }
//
// class _SearchPageState extends State<SearchPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
