//flutter_covid_dashboard_ui/QuizTab/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_covid_dashboard_ui/screens/QuizTab/quizpage.dart';

class Quizhomepage extends StatefulWidget {
  @override
  _QuizhomepageState createState() => _QuizhomepageState();
}

class _QuizhomepageState extends State<Quizhomepage> {
  List<String> images = [
    "images/ProcessQuizCircle.png",
    "images/TechQuizCircle.png",
    "images/ToolsQuizCircle.png",
    "images/CommQuizCircle.png",
    "images/KBQuizCircle.png",
    "images/AdhocQuizCircle.png",
  ];

  List<String> des = [
    "\n\n           on Quality",
    "\n\n   on Trobleshooting",
    "\n\n            on HPSM etc.",
    "\n\n         on Soft skills",
    "\n\n      on Knowledge base",
    "\n\n on Adhoc topic",
  ];

  Widget customcard(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 2.5,
        horizontal: 6.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the quiz name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Color(0xFF473F97),
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Row(
              children: <Widget>[
                SizedBox(width: 6.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 50.0,
                      width: 50.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 9.0),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quizes",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Process Quiz", images[0], des[0]),
          customcard("Tech Quiz", images[1], des[1]),
          customcard("Tools Quiz", images[2], des[2]),
          customcard("Comm Quiz", images[3], des[3]),
          customcard("KB Quiz", images[4], des[4]),
          customcard("Adhoc Quiz", images[5], des[5]),
        ],
      ),
    );
  }
}

