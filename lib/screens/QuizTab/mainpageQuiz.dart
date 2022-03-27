//flutter_covid_dashboard_ui/QuizTab/
import 'package:flutter_covid_dashboard_ui/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/QuizTab/splash.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: splashscreen(),
    );
  }
}
