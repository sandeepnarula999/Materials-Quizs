// Copyright 2020 Marcus Ng. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkillUP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavScreen(),
    );
  }
}
