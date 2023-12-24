import 'package:first_app/CreateSetsPagesFolder/CreateSet.dart';
import 'package:first_app/homeNav.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'home.dart';
import 'MyApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Navigation App',
      theme: ThemeData.light().copyWith(
        primaryColor: Color.fromARGB(255, 255, 255, 255),
      ),
      darkTheme: ThemeData.light().copyWith(
        primaryColor: Color.fromARGB(255, 0, 0, 0),
      ),
      home: HomeNav(), // Set the initial route to FirstPage
    );
  }
}