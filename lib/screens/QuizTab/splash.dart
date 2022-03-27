
//flutter_covid_dashboard_ui/QuizTab/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/QuizTab/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Quizhomepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          children: [
            Text(
              '\n\n\nSkillUP',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
            Text(
              "\nTest Yourself",
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
                fontFamily: "Satisfy",
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
